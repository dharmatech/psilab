
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(define M_PI (* 2 (asin 1)))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 256 256)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (let ((xc 128.0)
            (yc 128.0)
            (radius 100.0)
            (angle1 (*  45.0 (/ M_PI 180.0)))
            (angle2 (* 180.0 (/ M_PI 180.0))))

        (cairo_set_line_width cr 10.0)
        (cairo_arc cr xc yc radius angle1 angle2)
        (cairo_stroke cr)

        (cairo_set_source_rgba cr 1 0.2 0.2 0.6)
        (cairo_set_line_width cr 6.0)

        (cairo_arc cr xc yc 10.0 0 (* 2 M_PI))
        (cairo_fill cr)

        (cairo_arc cr xc yc radius angle1 angle1)
        (cairo_line_to cr xc yc)
        (cairo_arc cr xc yc radius angle2 angle2)
        (cairo_line_to cr xc yc)
        (cairo_stroke cr)

        (destroy))))

  (cairo_surface_write_to_png surface "sample-arc.png")

  (cairo_surface_destroy surface))