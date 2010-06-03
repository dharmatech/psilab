
(library (psilab cfdg util)

  (export pi radians sq)

  (import (rnrs))

  (define pi (* 2 (asin 1)))

  (define (radians n)
    (* n (/ pi 180.0)))

  (define (sq n) (* n n)))
