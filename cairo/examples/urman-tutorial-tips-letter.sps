
(import (rnrs)
        (surfage s42 eager-comprehensions)
        (ypsilon cairo)
        (psilab cairo with-cairo)
        (psilab cairo is-text-extents))

(define-c-struct-methods cairo_text_extents_t)

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 780 30)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (scale 30 30)
      
      (set_font_size 0.8)

      (set_source_rgb 0.0 0.0 0.0)
      (select_font_face "Georgia"
                        CAIRO_FONT_SLANT_NORMAL
                        CAIRO_FONT_WEIGHT_BOLD)

      (let ((alphabet "AbCdEfGhIjKlMnOpQrStUvWxYz")
            (te (make-cairo_text_extents_t)))
        (is-text-extents te)
        (do-ec (: i (string-length alphabet))
          (let ((letter (substring alphabet i (+ i 1))))
            (text_extents letter te)
            (move_to (- (+ i 0.5)
                        te.x_bearing
                        (/ te.width 2))
                     (- 0.5 te.y_bearing (/ te.height 2)))
            (show_text letter))))
      
      (destroy)))

  (cairo_surface_write_to_png surface "tips-letter.png")

  (cairo_surface_destroy surface))
