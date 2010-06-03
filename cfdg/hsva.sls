
(library (psilab cfdg hsva)

  (export make-hsva
          hsva?
          hsva-hue
          hsva-saturation
          hsva-value
          hsva-alpha
          hsva-hue-set!
          hsva-saturation-set!
          hsva-value-set!
          hsva-alpha-set!)

  (import (rnrs))

  (define-record-type hsva
    (fields (mutable hue)
            (mutable saturation)
            (mutable value)
            (mutable alpha))))