
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (let ((linpat (cairo_pattern_create_linear 0 0 1 1)))

        (cairo_pattern_add_color_stop_rgb linpat 0 0 0.3 0.8)
        (cairo_pattern_add_color_stop_rgb linpat 1 0 0.8 0.3)

        (set_source linpat)

        (cairo_pattern_destroy linpat))

      (let ((radpat (cairo_pattern_create_radial 0.5 0.5 0.25 0.5 0.5 0.75)))

        (cairo_pattern_add_color_stop_rgba radpat 0   0 0 0 1)
        (cairo_pattern_add_color_stop_rgba radpat 0.5 0 0 0 0)

        (mask radpat)

        (cairo_pattern_destroy radpat))

      (cairo_destroy cr)))

  (cairo_surface_write_to_png surface "mask.png")

  (cairo_surface_destroy surface))
