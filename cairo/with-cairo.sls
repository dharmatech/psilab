
(library (psilab cairo with-cairo)

  (export with-cairo)

  (import (rnrs)
          (dharmalab misc gen-id)
          (ypsilon cairo))

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define-syntax define-with-cairo-syntax
    (lambda (stx)
      (syntax-case stx ()
        ( (define-with-cairo-syntax var method param ...)
          (with-syntax ( (cairo_method (gen-id #'var "cairo_" #'method))
                         (met (gen-id #'var #'method)) )
            #'(begin
                (define (met param ...) (cairo_method var param ...))
                )) ))))

  (define-syntax with-cairo
    (lambda (stx)
      (syntax-case stx ()
        ( (with-cairo var expr ...)
          #'(begin

              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              ;; cairo drawing context
              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ;; cairo_create                        (cairo_surface_t *target);

              (define-with-cairo-syntax var reference)
              (define-with-cairo-syntax var destroy)
              (define-with-cairo-syntax var status)
              (define-with-cairo-syntax var save)
              (define-with-cairo-syntax var restore)
              (define-with-cairo-syntax var get_target)
              (define-with-cairo-syntax var push_group)
              (define-with-cairo-syntax var push_group_with_content content)
              (define-with-cairo-syntax var pop_group)
              (define-with-cairo-syntax var pop_group_to_source)
              (define-with-cairo-syntax var get_group_target)

              (define-with-cairo-syntax var set_source_rgb red green blue)
              (define-with-cairo-syntax var set_source_rgba red green blue alpha)
              (define-with-cairo-syntax var set_source source)
              (define-with-cairo-syntax var set_source_surface surface x y)

              (define-with-cairo-syntax var get_source)
              ;; antialias_t
              (define-with-cairo-syntax var set_antialias antialias)
              (define-with-cairo-syntax var get_antialias)

              (define-with-cairo-syntax var set_dash dashes num_dashes offset)

              (define-with-cairo-syntax var get_dash_count)

              (define-with-cairo-syntax var get_dash dashes offset)

              ;; fill_rule_t

              (define-with-cairo-syntax var set_fill_rule fill_rule)
              (define-with-cairo-syntax var get_fill_rule)

              ;; line_cap_t

              (define-with-cairo-syntax var set_line_cap line_cap)
              (define-with-cairo-syntax var get_line_cap)

              ;; line_join_t

              (define-with-cairo-syntax var set_line_join line_join)
              (define-with-cairo-syntax var get_line_join)
              (define-with-cairo-syntax var set_line_width width)
              (define-with-cairo-syntax var get_line_width)

              (define-with-cairo-syntax var set_miter_limit limit)

              (define-with-cairo-syntax var get_miter_limit)

              ;; operator_t

              (define-with-cairo-syntax var set_operator op)

              (define-with-cairo-syntax var get_operator)

              (define-with-cairo-syntax var set_tolerance tolerance)

              (define-with-cairo-syntax var get_tolerance)
              (define-with-cairo-syntax var clip)
              (define-with-cairo-syntax var clip_preserve)

              (define-with-cairo-syntax var clip_extents x1 y1 x2 y2)

              (define-with-cairo-syntax var reset_clip)

              ;; rectangle_t
              ;; rectangle_list_t

              (define-with-cairo-syntax var rectangle_list_destroy rectangle_list)
              (define-with-cairo-syntax var copy_clip_rectangle_list )

              (define-with-cairo-syntax var fill)
              (define-with-cairo-syntax var fill_preserve)

              (define-with-cairo-syntax var fill_extents x1 y1 x2 y2)

              (define-with-cairo-syntax var in_fill x y)
              (define-with-cairo-syntax var mask pattern)
              (define-with-cairo-syntax var mask_surface surface surface_x surface_y)

              (define-with-cairo-syntax var paint)
              (define-with-cairo-syntax var paint_with_alpha alpha)
              (define-with-cairo-syntax var stroke)
              (define-with-cairo-syntax var stroke_preserve)
              (define-with-cairo-syntax var stroke_extents x1 y1 x2 y2)
              (define-with-cairo-syntax var in_stroke x y)

              (define-with-cairo-syntax var copy_page)
              (define-with-cairo-syntax var show_page)
              (define-with-cairo-syntax var get_reference_count)

              (define-with-cairo-syntax var set_user_data key user_data destroy)
              (define-with-cairo-syntax var get_user_data key)

              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              ;; paths
              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ;; cairo_path_t
              ;; cairo_path_data_t
              ;; cairo_path_data_type_t

              (define-with-cairo-syntax var copy_path )
              (define-with-cairo-syntax var copy_path_flat )
              (define-with-cairo-syntax var path_destroy path)
              (define-with-cairo-syntax var append_path  path)
              (define-with-cairo-syntax var has_current_point )
              (define-with-cairo-syntax var get_current_point  x y)
              (define-with-cairo-syntax var new_path )
              (define-with-cairo-syntax var new_sub_path )
              (define-with-cairo-syntax var close_path )
              (define-with-cairo-syntax var arc   xc  yc  radius  angle1  angle2)
              (define-with-cairo-syntax var arc_negative   xc  yc  radius  angle1  angle2)
              (define-with-cairo-syntax var curve_to   x1  y1  x2  y2  x3  y3)
              (define-with-cairo-syntax var line_to   x  y)
              (define-with-cairo-syntax var move_to   x  y)
              (define-with-cairo-syntax var rectangle   x  y  width  height)
              (define-with-cairo-syntax var glyph_path  glyphs num_glyphs)
              (define-with-cairo-syntax var text_path  utf8)
              (define-with-cairo-syntax var rel_curve_to   dx1  dy1  dx2  dy2  dx3  dy3)
              (define-with-cairo-syntax var rel_line_to   dx  dy)
              (define-with-cairo-syntax var rel_move_to   dx  dy)
              (define-with-cairo-syntax var path_extents  x1 y1 x2 y2)

              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              ;; transformations
              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              (define-with-cairo-syntax var translate tx ty)
              (define-with-cairo-syntax var scale sx sy)
              (define-with-cairo-syntax var rotate angle)
              (define-with-cairo-syntax var transform matrix)
              (define-with-cairo-syntax var set_matrix matrix)
              (define-with-cairo-syntax var get_matrix matrix)
              (define-with-cairo-syntax var identity_matrix)
              (define-with-cairo-syntax var user_to_device x y)
              (define-with-cairo-syntax var user_to_device_distance dx dy)
              (define-with-cairo-syntax var device_to_user x y)
              (define-with-cairo-syntax var device_to_user_distance dx dy)

              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              ;; text
              ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              (define-with-cairo-syntax var select_font_face family  slant  weight)
              (define-with-cairo-syntax var set_font_size  size)
              (define-with-cairo-syntax var set_font_matrix  matrix)
              (define-with-cairo-syntax var get_font_matrix  matrix)
              (define-with-cairo-syntax var set_font_options options)
              (define-with-cairo-syntax var get_font_options options)
              (define-with-cairo-syntax var set_font_face font_face)
              (define-with-cairo-syntax var get_font_face )
              (define-with-cairo-syntax var set_scaled_font scaled_font)
              (define-with-cairo-syntax var get_scaled_font )
              (define-with-cairo-syntax var show_text utf8)
              (define-with-cairo-syntax var show_glyphs glyphs num_glyphs)
              (define-with-cairo-syntax var show_text_glyphs utf8 utf8_len glyphs num_glyphs clusters num_clusters cluster_flags)
              (define-with-cairo-syntax var font_extents extents)
              (define-with-cairo-syntax var text_extents utf8 extents)
              (define-with-cairo-syntax var glyph_extents glyphs num_glyphs extents)
              
              expr
              ...))))))