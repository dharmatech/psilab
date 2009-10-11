
(library (psilab xlib util x-get-geometry)

  (export x-get-geometry
	  x-get-geometry-info-root
	  x-get-geometry-info-x
	  x-get-geometry-info-y
	  x-get-geometry-info-width
	  x-get-geometry-info-height
	  x-get-geometry-info-border-width
	  x-get-geometry-info-depth)

  (import (rnrs)
	  (ypsilon ffi)
	  (psilab xlib ffi))

  (define-record-type x-get-geometry-info
    (fields root x y width height border-width depth))

  (define (x-get-geometry dpy id)

    (let ((root         (make-bytevector 4 0))
	  (x            (make-bytevector 4 0))
	  (y            (make-bytevector 4 0))
	  (width        (make-bytevector 4 0))
	  (height       (make-bytevector 4 0))
	  (border-width (make-bytevector 4 0))
	  (depth        (make-bytevector 4 0)))

      (XGetGeometry dpy id root x y width height border-width depth)

      (make-x-get-geometry-info (bytevector-c-uint32-ref root         0)
				(bytevector-c-int32-ref  x            0)
				(bytevector-c-int32-ref  y            0)
				(bytevector-c-uint32-ref width        0)
				(bytevector-c-uint32-ref height       0)
				(bytevector-c-uint32-ref border-width 0)
				(bytevector-c-uint32-ref depth        0))))

  )
       