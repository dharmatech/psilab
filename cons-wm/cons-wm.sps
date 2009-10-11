
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(import (rnrs)
	(xitomatl fmt)
	(psilab xlib ffi)
	(psilab xlib keysym)
	(psilab xlib util)
	(psilab xlib util x-get-geometry)
	(psilab xlib util x-query-tree))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (c-false? val) (= val 0))
(define (c-true?  val) (not (c-false? val)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define dpy    #f)
(define screen #f)
(define root   #f)

(define move-cursor   #f)
(define resize-cursor #f)

(define click-root-window   'click-root-window) 
(define click-client-window 'click-client-window)

(define clients (make-eq-hashtable))

(define handlers (make-vector LASTEvent #f))

(define-record-type button (fields click mask button procedure))

(define-record-type key (fields mod keysym procedure))

(define num-lock-mask 0)

(define (clean-mask mask)
  (bitwise-and mask (bitwise-not (bitwise-ior num-lock-mask LockMask))))

(define ButtonMask (bitwise-ior ButtonPressMask ButtonReleaseMask))

(define mouse-mask (bitwise-ior ButtonMask PointerMotionMask))

(define selected #f)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; config
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define border-width 5)

(define normal-border-color   "#cccccc")
(define selected-border-color "#0066ff")

(define mod-key Mod4Mask)

(define use-grab #f)

(define buttons #f)

(define keys #f)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define get-color
  (let ((color (make-XColor)))
    (lambda (name)
      (let ((colormap (XDefaultColormap dpy screen)))
        (XAllocNamedColor dpy colormap name color color)
	(XColor-pixel color)))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (grab-buttons client focused)
  (XUngrabButton dpy AnyButton AnyModifier client)
  (if focused
      (for-each
       (lambda (b)
	 (if (eq? (button-click b) click-client-window)
	     (for-each
	      (lambda (modifier)
		(XGrabButton dpy
			     (button-button b)
			     (bitwise-ior (button-mask b) modifier)
			     client
			     False ButtonMask GrabModeAsync GrabModeSync None
			     None))
	      (list 0 LockMask num-lock-mask
		    (bitwise-ior num-lock-mask LockMask)))
	     (XGrabButton dpy AnyButton AnyModifier client False ButtonMask
			  GrabModeAsync GrabModeSync None None)))
       buttons)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (grab-keys)
  (XUngrabKey dpy AnyKey AnyModifier root)
  (for-each
   (lambda (k)
     (let ((code (XKeysymToKeycode dpy (key-keysym k))))
       ;; Kludge for now. Some FFIs return a Scheme char, others a number.
       (let ((code (if (char? code) (char->integer code) code)))
	 (for-each
	  (lambda (modifier)
	    (XGrabKey dpy code (bitwise-ior (key-mod k) modifier)
		      root True GrabModeAsync GrabModeAsync))
	  (list 0 LockMask num-lock-mask (bitwise-ior num-lock-mask LockMask))))))
   keys))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (key-press ev)
  (let ((keysym (XKeycodeToKeysym dpy (XKeyEvent-keycode ev) 0)))
    (let ((key (find (lambda (k)
		       (and (= (key-keysym k) keysym)
			    (= (clean-mask (key-mod k))
			       (clean-mask (XKeyEvent-state ev)))))
		     keys)))
      ((key-procedure key)))))

(vector-set! handlers KeyPress key-press)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (enter-notify ev)
  (cond ((and (not (= (XCrossingEvent-mode ev) NotifyNormal))
	      (not (= (XCrossingEvent-window ev) root)))
	 (fmt #t "  enter-notify : mode is not NotifyNormal" nl) #t)
	((and (= (XCrossingEvent-detail ev) NotifyInferior)
	      (not (= (XCrossingEvent-window ev) root)))
	 (fmt #t "  enter-notify : detail is NotifyInferior" nl) #t)
	((hashtable-ref clients (XCrossingEvent-window ev) #f) => focus)
	(else (focus #f))))

(vector-set! handlers EnterNotify enter-notify)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (focus-in ev)
  (if (and (integer? selected)
	   (not (= (XFocusChangeEvent-window ev) selected)))
      (XSetInputFocus dpy selected RevertToPointerRoot CurrentTime)))

(vector-set! handlers FocusIn focus-in)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (manage id)
  (XSetWindowBorderWidth dpy id border-width)
  (XSetWindowBorder dpy id (get-color normal-border-color))
  (XSelectInput dpy id (bitwise-ior EnterWindowMask
                                    FocusChangeMask
                                    PropertyChangeMask
                                    StructureNotifyMask))
  (grab-buttons id #f)
  (hashtable-set! clients id id)
  (XMapWindow dpy id)
  (XSync dpy False))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define map-request
  (let ((wa (make-XWindowAttributes)))
    (lambda (ev)
      (let ((id (XMapRequestEvent-window ev)))
	(if (and (c-true? (XGetWindowAttributes dpy id wa))
		 (= (XWindowAttributes-override_redirect wa) 0)
		 (not (hashtable-ref clients id #f)))
	    (manage id))))))

(vector-set! handlers MapRequest map-request)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define configure-request
  (let ((wc (make-XWindowChanges)))
    (lambda (ev)
      (XWindowChanges-x-set!		 wc (XConfigureRequestEvent-x            ev))
      (XWindowChanges-y-set!		 wc (XConfigureRequestEvent-y            ev))
      (XWindowChanges-width-set!	 wc (XConfigureRequestEvent-width        ev))
      (XWindowChanges-height-set!	 wc (XConfigureRequestEvent-height       ev))
      (XWindowChanges-border_width-set!	 wc (XConfigureRequestEvent-border_width ev))
      (XWindowChanges-sibling-set!	 wc (XConfigureRequestEvent-above        ev))
      (XWindowChanges-stack_mode-set!	 wc (XConfigureRequestEvent-detail       ev))
      (XConfigureWindow dpy
			(XConfigureRequestEvent-window ev)
			(XConfigureRequestEvent-value_mask ev)
			wc)
      (XSync dpy False))))

(vector-set! handlers ConfigureRequest configure-request)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (focus client)

  (fmt #t "  focus : start" nl)

  (if (and selected (not (equal? client selected)))
      (begin
	(grab-buttons selected #f)
	(XSetWindowBorder dpy selected (get-color normal-border-color))))

  (if client
      (begin
	(grab-buttons client #t)
	(XSetWindowBorder dpy client (get-color selected-border-color))
	(XSetInputFocus   dpy client RevertToPointerRoot CurrentTime))
      (XSetInputFocus dpy root RevertToPointerRoot CurrentTime))

  (set! selected client))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (button-press ev)
  (fmt #t "  button-press : start" nl)
  (let ((client (hashtable-ref clients (XButtonEvent-window ev) #f)))
    (if client (focus client))
    (let ((click (if client click-client-window click-root-window)))
      (let ((button
	     (find
	      (lambda (b)
		(and (eq? (button-click b) click)
		     (= (button-button b)
			(XButtonEvent-button ev))
		     (= (clean-mask (button-mask b))
			(clean-mask (XButtonEvent-state ev)))))
	      buttons)))
	(if button
	    ((button-procedure button)))))))

(vector-set! handlers ButtonPress button-press)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (destroy-notify ev)
  (let ((client (hashtable-ref clients (XDestroyWindowEvent-window ev) #f)))
    (if client
	(hashtable-delete! clients client))))

(vector-set! handlers DestroyNotify destroy-notify)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (move-mouse)
  (fmt #t "  move-mouse : start" nl)
  (let ((client selected))
    (if (and client
	     (= (XGrabPointer dpy root False mouse-mask
			      GrabModeAsync GrabModeAsync
			      None move-cursor CurrentTime)
		GrabSuccess))
	(begin
	  (if use-grab (XGrabServer dpy))
	  (let ((ev (make-XEvent)))
	    (let loop ()
	      (XMaskEvent dpy
			  (bitwise-ior mouse-mask
				       ExposureMask
				       SubstructureRedirectMask)
			  ev)
	      (let ((type (XAnyEvent-type ev)))
		(cond ((or (= type ConfigureRequest)
			   (= type Expose)
			   (= type MapRequest))
		       ((vector-ref handlers type) ev))
		      ((= type MotionNotify)
		       (XMoveWindow dpy
				    client
				    (XMotionEvent-x ev)
				    (XMotionEvent-y ev))
		       (XSync dpy False)))
		(if (not (= type ButtonRelease)) (loop)))))
	  (if use-grab (XUngrabServer dpy))
	  (XUngrabPointer dpy CurrentTime)))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (resize-mouse)
  (let ((client selected))
    (if (and client
	     (= (XGrabPointer dpy root False mouse-mask
			      GrabModeAsync GrabModeAsync
			      None resize-cursor CurrentTime)
		GrabSuccess))
	(begin
	  (if use-grab (XGrabServer dpy))
	  (let ((ev (make-XEvent)))
	    (define ResizeMask
	      (bitwise-ior mouse-mask
			   ExposureMask
			   SubstructureRedirectMask))
	    (define client-x #f)
	    (define client-y #f)
	    (let ((info (x-get-geometry dpy client)))
	      (set! client-x (x-get-geometry-info-x info))
	      (set! client-y (x-get-geometry-info-y info)))
	    (let loop ()
	      (XMaskEvent dpy ResizeMask ev)
	      (let ((type (XAnyEvent-type ev)))
		(cond ((or (= type ConfigureRequest)
			   (= type Expose)
			   (= type MapRequest))
		       ((vector-ref handlers type) ev))
		      ((= type MotionNotify)
		       (let ((new-width  (- (XMotionEvent-x ev) client-x))
			     (new-height (- (XMotionEvent-y ev) client-y)))
			 (XResizeWindow dpy client new-width new-height)
			 (XSync dpy False))))
		(if (not (= type ButtonRelease))
		    (loop))))
	    (if use-grab (XUngrabServer dpy))
	    (XUngrabPointer dpy CurrentTime))))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Desktops
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define is-viewable?
  (let ((wa (make-XWindowAttributes)))
    (lambda (id)
      (XGetWindowAttributes dpy id wa)
      (= (XWindowAttributes-map_state wa) IsViewable))))

(define (is-client? id)
  (hashtable-contains? clients id))

(define (mapped-client? id)
  (and (is-viewable? id)
       (is-client? id)))

(define (mapped-clients)
  (filter mapped-client?
	  (x-query-tree-info-children (x-query-tree dpy root))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define desktops (make-vector 10 #f))

(define current-desktop 1)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (switch-to-desktop i)

  (define (unmap-client id)
    (XUnmapWindow dpy id))

  (define (map-client id)
    (XMapWindow dpy id))

  (vector-set! desktops current-desktop (mapped-clients))

  (for-each unmap-client (mapped-clients))

  (if (vector-ref desktops i)
      (for-each map-client (vector-ref desktops i)))

  (set! current-desktop i))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set! buttons
      (list
       (make-button click-client-window mod-key Button1 move-mouse)
       (make-button click-client-window mod-key Button3 resize-mouse)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set! keys
      (list (make-key mod-key XK_Return (lambda () (system "xterm &")))
	    (make-key mod-key XK_q      exit)
	    (make-key mod-key XK_1 (lambda () (switch-to-desktop 1)))
	    (make-key mod-key XK_2 (lambda () (switch-to-desktop 2)))
	    (make-key mod-key XK_3 (lambda () (switch-to-desktop 3)))
	    (make-key mod-key XK_4 (lambda () (switch-to-desktop 4)))
	    (make-key mod-key XK_5 (lambda () (switch-to-desktop 5)))
	    (make-key mod-key XK_6 (lambda () (switch-to-desktop 6)))
	    (make-key mod-key XK_7 (lambda () (switch-to-desktop 7)))
	    (make-key mod-key XK_8 (lambda () (switch-to-desktop 8)))
	    (make-key mod-key XK_9 (lambda () (switch-to-desktop 9)))
	    (make-key mod-key XK_0 (lambda () (switch-to-desktop 0)))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define event-loop
  (let ((ev (make-XEvent)))
    (lambda ()
      (XSync dpy False)
      (let loop ()
	(XNextEvent dpy ev)
	(fmt #t "event-loop : received event of type " (XAnyEvent-type ev) nl)
	(let ((handler (vector-ref handlers (XAnyEvent-type ev))))
	  (if handler
	      (handler ev)))
	(loop)))))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set! dpy (XOpenDisplay (or (getenv "DISPLAY") 0)))

(set! screen (XDefaultScreen dpy))

(set! root (XRootWindow dpy screen))

(set! move-cursor   (XCreateFontCursor dpy XC_fleur))
(set! resize-cursor (XCreateFontCursor dpy XC_sizing))

(XSelectInput dpy root (bitwise-ior SubstructureRedirectMask
                                    SubstructureNotifyMask
                                    ButtonPressMask
                                    EnterWindowMask
                                    LeaveWindowMask
                                    StructureNotifyMask
                                    PropertyChangeMask))

(grab-keys)

(XSetErrorHandler
 (lambda (dpy ee)
   (fmt #t "Error handler called" nl)
   1))

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fmt #t "cons-wm is setup" nl)

(event-loop)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

