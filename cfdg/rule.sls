
(library (psilab cfdg rule)

  (export rule)

  (import (rnrs)
          (agave misc random-weighted)
          (psilab cfdg core))

  (define-syntax rule

    (syntax-rules ()

      ( (rule name
              (weight (shape adjustment ...) ...)
              ...)

        (define name

          (let ((selector (random-weighted* (list weight ...)))

                (procedures (vector (lambda ()
                                      (let ()
                                        (save) adjustment ... (shape) (restore))
                                      ...)
                                    ...)))

            (lambda ()
              (when (continue?)
                (let ((proc (vector-ref procedures (selector))))
                  (proc)))))) ))))