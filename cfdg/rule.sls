
(library (psilab cfdg rule)

  (export rule)

  (import (rnrs)
          (dharmalab misc random-weighted)
          (psilab cfdg core))

  (define-syntax rule

    (syntax-rules ()

      ( (rule name
              (weight (shape adjustment ...) ...)
              ...)

        (define name

          (let ((selector (random-weighted-selector (list weight ...)))

                (procedures (vector (lambda ()
                                      (let ()
                                        (save) adjustment ... (shape) (restore))
                                      ...)
                                    ...)))

            (lambda ()
              (when (continue?)
                (let ((proc (vector-ref procedures (selector))))
                  (proc)))))) ))))