
(library (psilab cfdg hsva-to-rgba)

  (export hsva->rgba)

  (import (rnrs)
          (psilab cfdg rgba)
          (psilab cfdg hsva))

  (define (hsva->rgba color)

    (let ((hue        (inexact (hsva-hue        color)))
          (saturation (inexact (hsva-saturation color)))
          (value      (inexact (hsva-value      color)))
          (alpha      (inexact (hsva-alpha      color))))

      (let ((Hi (mod (floor (/ hue 60.0)) 6.0)))

        (let ((f (- (/ hue 60.0) Hi))
              (p (* (- 1.0 saturation) value)))

          (let ((q (* (- 1.0 (*      f  saturation)) value))
                (t (* (- 1.0 (* (- 1.0 f) saturation)) value)))
            
            (case (exact Hi)
              ((0) (make-rgba value t   p   alpha))
              ((1) (make-rgba q   value p   alpha))
              ((2) (make-rgba p   value t   alpha))
              ((3) (make-rgba p   q   value alpha))
              ((4) (make-rgba t   p   value alpha))
              ((5) (make-rgba value p   q   alpha)))))))))