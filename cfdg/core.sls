
(library (psilab cfdg core)

  (export save
          restore
          
          scale
          rotate
          x
          y
          flip

          hue
          saturation
          brightness
          alpha

          circle
          square
          triangle

          continue?

          bounds
          viewport

          background
          start-shape

          init-cfdg
          )

  (import (rnrs)
          (surfage s27 random-bits)
          (ypsilon ffi)
          (ypsilon cairo)
          (dharmalab misc random-weighted)
          (psilab cfdg util)
          (psilab cfdg rgba)
          (psilab cfdg hsva)
          (psilab cfdg hsva-to-rgba))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define cr #f)
  (define surface #f)

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; read-command-line
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define area-width  400)
  (define area-height 400)

  (define out-file "out.png")

  (define (read-command-line)

    (let ((result (member "--width" (command-line))))
      (when result
        (set! area-width (string->number (list-ref result 1)))))

    (let ((result (member "--height" (command-line))))
      (when result
        (set! area-height (string->number (list-ref result 1)))))

    (let ((result (member "--out-file" (command-line))))
      (when result
        (set! out-file (list-ref result 1)))))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; hue saturation brightness alpha
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define color #f)

  (define (adjust num)
    (lambda (val)
      (if (> num 0.0)
          (+ val (* (- 1.0 val) num))
          (+ val (*        val  num)))))

  (define (hue num)
    (hsva-hue-set! color (mod (+ (hsva-hue color) num) 360)))

  (define (saturation num)
    (hsva-saturation-set! color ((adjust num) (hsva-saturation color))))

  (define (brightness num)
    (hsva-value-set! color ((adjust num) (hsva-value color))))

  (define (alpha num)
    (hsva-alpha-set! color ((adjust num) (hsva-alpha color))))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (cairo-set-source-rgba cr val)
    (cairo_set_source_rgba cr
                           (rgba-red val)
                           (rgba-green val)
                           (rgba-blue val)
                           (rgba-alpha val)))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; bounds viewport
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (bounds x-low x-high y-low y-high)

    (let ((width  (- x-high x-low))
          (height (- y-high y-low)))

      (cairo_scale cr area-width area-height)

      (cairo_scale cr 1 -1)

      (cairo_scale cr (/ 1.0 width) (/ 1.0 height))

      ;; (cairo_translate cr x-high (- y-high))

      (cairo_translate cr (- x-low) (- y-high))

      ))

  (define (viewport x-low width y-low height)
    (bounds x-low (+ x-low width) y-low (+ y-low height)))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; save restore
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (clone-hsva obj)
    (make-hsva (hsva-hue obj)
               (hsva-saturation obj)
               (hsva-value obj)
               (hsva-alpha obj)))

  (define color-stack '())

  (define (save)
    (set! color-stack (cons (clone-hsva color) color-stack))
    (cairo_save cr))

  (define (restore)
    (cairo_restore cr)
    (set! color (car color-stack))
    (set! color-stack (cdr color-stack))
    (cairo-set-source-rgba cr (hsva->rgba color)))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; rotate scale size x y
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (rotate n)
    (cairo_rotate cr (radians n)))

  (define scale
    (case-lambda
     ((n)   (cairo_scale cr n n))
     ((x y) (cairo_scale cr x y))))

  (define size scale)

  (define (x val) (cairo_translate cr val 0.0))
  (define (y val) (cairo_translate cr 0.0 val))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define-c-struct-methods cairo_matrix_t)

  (define flip 

    (let ((ctm (make-cairo_matrix_t))
          (A   (make-cairo_matrix_t))
          (B   (make-cairo_matrix_t)))

      (lambda (angle)

        (let ((angle (radians angle)))

          (cairo_get_matrix cr ctm)
          (cairo_get_matrix cr A)

          (cairo_matrix_init B
                             (cos (* 2 angle))    (sin (* 2 angle))
                             (sin (* 2 angle)) (- (cos (* 2 angle)))
                             0.0
                             0.0)

          ;; (cairo_matrix_multiply ctm A B)

          (cairo_matrix_multiply ctm B A)

          (cairo_set_matrix cr ctm)))))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (circle)
    (cairo-set-source-rgba cr (hsva->rgba color))
    (cairo_arc cr 0.0 0.0 0.5 0 (* 2 pi))
    (cairo_fill cr))

  (define (square)
    (cairo-set-source-rgba cr (hsva->rgba color))
    (cairo_rectangle cr -0.5 -0.5 1.0 1.0)
    (cairo_fill cr))

  (define (triangle)
    (cairo-set-source-rgba cr (hsva->rgba color))
    (cairo_move_to cr  0.0  0.577)
    (cairo_line_to cr  0.5 -0.289)
    (cairo_line_to cr -0.5 -0.289)
    (cairo_fill cr))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; continue?
  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (norm v)
    (sqrt (+ (sq (vector-ref v 0))
             (sq (vector-ref v 1)))))

  (define (unit-distance)

    (let ((x (make-c-double 1.0))
          (y (make-c-double 0.0)))

      (cairo_user_to_device_distance cr x y)

      (norm (vector (c-double-ref x)
                    (c-double-ref y)))))

  (define (continue?)
    (> (unit-distance) 1.0))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define-syntax background
    (syntax-rules ()
      ((background adjustment ...)
       (begin
         (set! color (make-hsva 0.0 0.0 1.0 1.0))
         adjustment
         ...
         (cairo-set-source-rgba cr (hsva->rgba color))

         ;; (cairo_rectangle cr
         ;;                  x-min
         ;;                  y-min
         ;;                  (- x-max x-min)
         ;;                  (- y-max y-min))

         (cairo_rectangle cr 0 0 area-width area-height)
          
         (cairo_fill cr)))))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (start-shape proc)

    (set! color (make-hsva 0.0 0.0 0.0 1.0))

    (cairo-set-source-rgba cr (hsva->rgba color))

    (proc)

    (cairo_destroy cr)

    (cairo_surface_write_to_png surface out-file)

    (cairo_surface_destroy surface))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (init-cairo)
    (set! surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32
                                              area-width
                                              area-height))
    (set! cr (cairo_create surface)))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (init-cfdg)
    (random-source-randomize! default-random-source)
    (read-command-line)
    (init-cairo)))