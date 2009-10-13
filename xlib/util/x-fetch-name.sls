
(library (psilab xlib util x-fetch-name)

  (export x-fetch-name)

  (import (rnrs)
	  (ypsilon c-types)
	  (psilab xlib ffi))

  (define x-fetch-name
    (let ((bv (make-bytevector sizeof:void*)))
      (lambda (dpy id)
	(if (= (XFetchName dpy id bv) 0)
	    #f
	    (let ((name (c-string-ref (bytevector-c-void*-ref bv 0))))
	      (XFree (bytevector-c-void*-ref bv 0))
	      name)))))

  )