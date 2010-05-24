
(import (rnrs)
        (ypsilon cairo)
        (psilab cairo with-cairo))

(define-c-struct-methods cairo_text_extents_t)

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 120 120)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr
      
      (scale 120 120)

      (set_source_rgb 0 0 0)

      (select_font_face "Georgia"
                        CAIRO_FONT_SLANT_NORMAL
                        CAIRO_FONT_WEIGHT_BOLD)

      (set_font_size 1.2)

      (let ((te (make-cairo_text_extents_t)))

        (text_extents "a" te)

        (move_to (- 0.5
                    (/ (cairo_text_extents_t-width te) 2)
                    (cairo_text_extents_t-x_bearing te))
                 (- 0.5
                    (/ (cairo_text_extents_t-height te) 2)
                    (cairo_text_extents_t-y_bearing te))))

      (show_text "a")

      (destroy)))
      
  (cairo_surface_write_to_png surface "show-text.png")
  (cairo_surface_destroy surface))
