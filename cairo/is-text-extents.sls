
(library (psilab cairo is-text-extents)

  (export is-text-extents)

  (import (rnrs)
          (dharmalab misc gen-id)
          (ypsilon cairo))

  (define-c-struct-methods cairo_text_extents_t)
  
  (define-syntax is-text-extents
    (lambda (stx)
      (syntax-case stx ()
        ((is-text-extents var)
         (with-syntax ((var.x_bearing (gen-id #'var #'var ".x_bearing"))
                       (var.y_bearing (gen-id #'var #'var ".y_bearing"))
                       (var.width     (gen-id #'var #'var ".width"))
                       (var.height    (gen-id #'var #'var ".height"))
                       (var.x_advance (gen-id #'var #'var ".x_advance"))
                       (var.y_advance (gen-id #'var #'var ".y_advance")))

           #'(begin

               (define-syntax var.x_bearing (identifier-syntax (cairo_text_extents_t-x_bearing var)))
               (define-syntax var.y_bearing (identifier-syntax (cairo_text_extents_t-y_bearing var)))
               (define-syntax var.width     (identifier-syntax (cairo_text_extents_t-width var)))
               (define-syntax var.height    (identifier-syntax (cairo_text_extents_t-height var)))
               (define-syntax var.x_advance (identifier-syntax (cairo_text_extents_t-x_advance var)))
               (define-syntax var.y_advance (identifier-syntax (cairo_text_extents_t-y_advance var)))

               (define (var.x_bearing! val) (cairo_text_extents_t-x_bearing-set! var val))
               (define (var.y_bearing! val) (cairo_text_extents_t-y_bearing-set! var val))
               (define (var.width! val)     (cairo_text_extents_t-width-set! var val))
               (define (var.height! val)    (cairo_text_extents_t-height-set! var val))
               (define (var.x_advance! val) (cairo_text_extents_t-x_advance-set! var val))
               (define (var.y_advance! val) (cairo_text_extents_t-y_advance-set! var val)))))))))
  