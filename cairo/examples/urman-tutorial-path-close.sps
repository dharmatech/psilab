
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(define M_PI (* 2 (asin 1)))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (set_line_width 0.1)

      (set_source_rgb 0 0 0)

      (move_to 0.25 0.25)

      (line_to 0.5 0.375)

      (rel_line_to 0.25 -0.125)

      (arc 0.5 0.5 (* 0.25 (sqrt 2)) (* -0.25 M_PI) (* 0.25 M_PI))

      (rel_curve_to -0.25 -0.125 -0.25 0.125 -0.5 0)

      (close_path)

      (stroke)
      
      (destroy)))

  (cairo_surface_write_to_png surface "path-close.png")

  (cairo_surface_destroy surface))