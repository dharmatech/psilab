
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (set_source_rgb 0 0 0)

      (move_to 0 0)
      (line_to 1 1)
      (move_to 1 0)
      (line_to 0 1)
      (set_line_width 0.2)
      (stroke)

      (rectangle 0 0 0.5 0.5)
      (set_source_rgba 1 0 0 0.80)
      (fill)

      (rectangle 0 0.5 0.5 0.5)
      (set_source_rgba 0 1 0 0.60)
      (fill)

      (rectangle 0.5 0 0.5 0.5)
      (set_source_rgba 0 0 1 0.40)
      (fill)

      (destroy))

    (cairo_surface_write_to_png surface "set-source-rgba.png")

    (cairo_surface_destroy surface)))