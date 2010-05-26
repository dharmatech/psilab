
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(define M_PI (* 2 (asin 1)))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (set_line_width 0.1)

      (save)
      (scale 0.5 1)
      (arc 0.5 0.5 0.40 0 (* 2 M_PI))
      (stroke)

      (translate 1 0)
      (arc  0.5 0.5 0.40 0 (* 2 M_PI))
      (restore)
      (stroke)

      (destroy)))

  (cairo_surface_write_to_png surface "tips-ellipse.png")

  (cairo_surface_destroy surface))
