
(library (psilab cairo is-font-extents)

  (export is-font-extents)

  (import (rnrs)
          (dharmalab misc gen-id)
          (ypsilon cairo))

  (define-c-struct-methods cairo_font_extents_t)
  
  (define-syntax is-font-extents
    (lambda (stx)
      (syntax-case stx ()
        ((is-font-extents var)
         (with-syntax ((var.ascent        (gen-id #'var #'var ".ascent"))
                       (var.descent       (gen-id #'var #'var ".descent"))
                       (var.height        (gen-id #'var #'var ".height"))
                       (var.max_x_advance (gen-id #'var #'var ".max_x_advance"))
                       (var.max_y_advance (gen-id #'var #'var ".max_y_advance")))

           #'(begin

               (define-syntax var.ascent        (identifier-syntax (cairo_font_extents_t-ascent var)))
               (define-syntax var.descent       (identifier-syntax (cairo_font_extents_t-descent var)))
               (define-syntax var.height        (identifier-syntax (cairo_font_extents_t-height var)))
               (define-syntax var.max_x_advance (identifier-syntax (cairo_font_extents_t-max_x_advance var)))
               (define-syntax var.max_y_advance (identifier-syntax (cairo_font_extents_t-max_y_advance var)))

               (define (var.ascent! val)        (cairo_font_extents_t-ascent-set! var val))
               (define (var.descent! val)       (cairo_font_extents_t-descent-set! var val))
               (define (var.height! val)        (cairo_font_extents_t-height-set! var val))
               (define (var.max_x_advance! val) (cairo_font_extents_t-max_x_advance-set! var val))
               (define (var.max_y_advance! val) (cairo_font_extents_t-max_y_advance-set! var val)))))))))
  