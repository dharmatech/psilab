
(library (psilab xlib util x-query-tree)

  (export x-query-tree
	  x-query-tree-info-root
	  x-query-tree-info-parent
	  x-query-tree-info-children)

  (import (rnrs)
	  (ypsilon ffi)
	  (psilab xlib ffi))

  (define-record-type x-query-tree-info
    (fields root parent children))

  (define (x-query-tree dpy id)

    (let ((root      (make-bytevector 4))
	  (parent    (make-bytevector 4))
	  (children  (make-bytevector sizeof:void*))
	  (nchildren (make-bytevector 4)))

      (XQueryTree dpy id root parent children nchildren)

      (let ((root          (bytevector-u32-native-ref root      0))
	    (parent        (bytevector-u32-native-ref parent    0))
	    (children-addr (bytevector-c-void*-ref    children  0))
	    (nchildren     (bytevector-u32-native-ref nchildren 0)))
	
	(let ((children-bv (make-bytevector-mapping children-addr
						    (* nchildren 4))))

	    (let ((children
		   (let loop ((i 0))
		     (if (>= i nchildren)
			 '()
			 (cons (bytevector-u32-native-ref children-bv (* i 4))
			       (loop (+ i 1)))))))

	      (XFree children-addr)

	      (make-x-query-tree-info root parent children))))))

  )