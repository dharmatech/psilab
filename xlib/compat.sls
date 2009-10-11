
(library (psilab xlib compat)

  (export (rename (xlib:typedef typedef)
                  (xlib:c-structure c-structure)
                  (xlib:c-function c-function)))

  (import (rnrs) (ypsilon ffi) (ypsilon c-types))

  (define lib-name "libX11.so")

  (define lib (load-shared-object lib-name))

  (define ht-type-aliases (make-eq-hashtable))

  (define get-primitive-type
    (lambda (type)
      (cond ((hashtable-ref ht-type-aliases type #f)
             => get-primitive-type)
            (else type))))

  (define-syntax xlib:typedef
    (lambda (x)
      (syntax-case x ()
        ((_ type new)
         (begin
           (hashtable-set! ht-type-aliases (syntax->datum #'new) (syntax->datum #'type))
           #'(define-c-typedef new type))))))

  (define-syntax xlib:c-structure
    (lambda (x)
      (syntax-case x ()
        ((_ subform ...)
         #'(define-c-struct-type subform ...)))))

  (define-syntax xlib:c-function
    (lambda (x)
      (syntax-case x ()
        ((_ ret name args)
         (with-syntax
             ((e0 (datum->syntax #'k (get-primitive-type (syntax->datum #'ret))))
              (e1 (datum->syntax #'k (map get-primitive-type (syntax->datum #'args)))))
           #'(define name (c-function lib lib-name e0 name e1)))))))
  )