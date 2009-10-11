
(library (psilab xlib util)

  (export x-query-pointer
	  x-query-pointer-info-root
	  x-query-pointer-info-child
	  x-query-pointer-info-root-x
	  x-query-pointer-info-root-y
	  x-query-pointer-info-win-x
	  x-query-pointer-info-win-y
	  x-query-pointer-info-mask)

  (import (rnrs)
	  (ypsilon c-types)
	  (psilab xlib ffi))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define-record-type x-query-pointer-info
    (fields root child root-x root-y win-x win-y mask))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define (x-query-pointer dpy win)

    (let ((root-return   (make-bytevector 4 0))
	  (child-return  (make-bytevector 4 0))
	  (root-x-return (make-bytevector 4 0))
	  (root-y-return (make-bytevector 4 0))
	  (win-x-return  (make-bytevector 4 0))
	  (win-y-return  (make-bytevector 4 0))
	  (mask-return   (make-bytevector 4 0)))

      (XQueryPointer dpy win
		     root-return
		     child-return
		     root-x-return
		     root-y-return
		     win-x-return 
		     win-y-return 
		     mask-return)

      (make-x-query-pointer-info (bytevector-c-uint32-ref root-return   0)
				 (bytevector-c-uint32-ref child-return  0)
				 (bytevector-c-int32-ref  root-x-return 0)
				 (bytevector-c-int32-ref  root-y-return 0)
				 (bytevector-c-int32-ref  win-x-return  0) 
				 (bytevector-c-int32-ref  win-y-return  0) 
				 (bytevector-c-uint32-ref mask-return   0))))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  )