
(import (rnrs)
        (surfage s42 eager-comprehensions)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (let ((radpat (cairo_pattern_create_radial 0.25 0.25 0.1 0.5 0.5 0.5)))

	(cairo_pattern_add_color_stop_rgb radpat 0 1.0 0.8 0.8)
        (cairo_pattern_add_color_stop_rgb radpat 1 0.9 0.0 0.0)

        (do-ec (: i 1 10)
          (do-ec (: j 1 10)
            (rectangle (- (/ i 10.0) 0.04)
                       (- (/ j 10.0) 0.04)
                       0.08
                       0.08)))

        (set_source radpat)
        (fill))

      (let ((linpat (cairo_pattern_create_linear 0.25 0.35 0.75 0.65)))

	(cairo_pattern_add_color_stop_rgba linpat 0.00  1 1 1 0)
	(cairo_pattern_add_color_stop_rgba linpat 0.25  0 1 0 0.5)
	(cairo_pattern_add_color_stop_rgba linpat 0.50  1 1 1 0)
	(cairo_pattern_add_color_stop_rgba linpat 0.75  0 0 1 0.5)
	(cairo_pattern_add_color_stop_rgba linpat 1.00  1 1 1 0)

        (rectangle 0.0 0.0 1 1)
        (set_source linpat)
        (fill))

      (destroy)))

  (cairo_surface_write_to_png surface "set-source-gradient.png")

  (cairo_surface_destroy surface))