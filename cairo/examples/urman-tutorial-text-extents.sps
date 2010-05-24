
(import (rnrs)
        (ypsilon c-types)
        (ypsilon cairo)
        (psilab cairo with-cairo)
        (psilab cairo is-font-extents)
        (psilab cairo is-text-extents))

(define M_PI (* 2 (asin 1)))

(define-c-struct-methods cairo_font_extents_t)
(define-c-struct-methods cairo_text_extents_t)

(let ((surface (cairo_image_surface_create CAIRO_FORMAT_ARGB32 240 240)))

  (let ((cr (cairo_create surface)))

    (with-cairo cr

      (let ((text "joy")
            (fe (make-cairo_font_extents_t))
            (te (make-cairo_text_extents_t)))

        (is-font-extents fe)
        (is-text-extents te)
        
        (scale 240 240)

        (set_font_size 0.5)
        
        (set_source_rgb 0 0 0)

        (select_font_face "Georgia"
                          CAIRO_FONT_SLANT_NORMAL
                          CAIRO_FONT_WEIGHT_BOLD)

        (font_extents fe)

        (let ((px (let ((ux (make-c-double 1))
                        (uy (make-c-double 1)))
                    (device_to_user_distance ux uy)
                    (max (bytevector-c-double-ref ux 0)
                         (bytevector-c-double-ref uy 0)))))

          (font_extents fe)

          (text_extents text te)

          (let ((x (- 0.5 te.x_bearing (/ te.width 2)))
                (y (+ (- 0.5 fe.descent)
                      (/ fe.height 2))))

            (set_line_width (* 4 px))

            (let ((dash-length (make-c-double (* 9 px))))
              (set_dash dash-length 1 0))

            (set_source_rgba 0 0.6 0 0.5)

            (move_to (+ x te.x_bearing) y)
            (rel_line_to te.width 0)

            (move_to (+ x te.x_bearing)
                     (+ y fe.descent))
            (rel_line_to te.width 0)

            (move_to (+ x te.x_bearing) (- y fe.ascent))
            (rel_line_to (cairo_text_extents_t-width te) 0)

            (move_to (+ x te.x_bearing) (- y fe.height))
            (rel_line_to te.width 0)

            (stroke)

            (set_source_rgba 0 0 0.75 0.5)

            (set_line_width px)

            (let ((dash-length (make-c-double (* 3 px))))
              (set_dash dash-length 1 0))

            (rectangle (+ x te.x_bearing)
                       (+ y te.y_bearing)
                       te.width
                       te.height)

            (stroke)


            (move_to x y)
            (set_source_rgb 0 0 0)
            (show_text text)


            (set_dash 0 0 0)
            (set_line_width (* 2 px))
            (set_source_rgba 0 0 0.75 0.5)
            (move_to x y)
            (rel_line_to te.x_bearing te.y_bearing)
            (stroke)

            (set_source_rgba 0 0 0.75 0.5)
            (arc (+ x te.x_advance)
                 (+ y te.y_advance)
                 (* 5 px)
                 0
                 (* 2 M_PI))
            (fill)

            (arc x y (* 5 px) 0 (* 2 M_PI))
            (set_source_rgba 0.75 0 0 0.5)
            (fill)

            (stroke)

            (destroy))))))

    (cairo_surface_write_to_png surface "text-extents.png")

    (cairo_surface_destroy surface))