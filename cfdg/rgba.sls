
(library (psilab cfdg rgba)

  (export make-rgba
          rgba?
          rgba-red
          rgba-green
          rgba-blue
          rgba-alpha
          rgba-red-set!
          rgba-green-set!
          rgba-blue-set!
          rgba-alpha-set!)

  (import (rnrs))

  (define-record-type rgba
    (fields (mutable red)
            (mutable green)
            (mutable blue)
            (mutable alpha))))