
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 120 120)

      (set_source_rgb 0 0 0)
      (rectangle 0.25 0.25 0.5 0.5)
      (fill)

      (destroy)))

  (cairo_surface_write_to_png surface "fill.png")
  (cairo_surface_destroy surface))