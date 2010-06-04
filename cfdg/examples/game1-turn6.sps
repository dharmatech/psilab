
;; Based on the original at:
;; 
;;     http://www.contextfreeart.org/gallery/view.php?id=118
;;
;; Ported to Scheme by Ed Cavazos

(import (psilab cfdg core)
        (psilab cfdg rule))

(rule start
      (1 (spiral)
         (spiral (rotate 120))
         (spiral (rotate 240))))

(rule spiral

      (1 (f-squares)
         (f-triangles (x 0.5) (y 0.5) (rotate 45))
         (spiral (y 1.0) (rotate 25) (scale 0.9)))

      (0.022 (start (flip 90) (hue 50))))

(rule f-squares
      (1 (square (x 0.1) (y 0.1)
                 (alpha -0.33) (hue 250) (saturation 0.70) (brightness 0.80))
         (square (hue 220) (saturation 0.90) (brightness 0.33))
         (square (scale 0.9) (hue 220) (saturation 0.25) (brightness 1.00))
         (f-squares (scale 0.8) (rotate 5))))

(rule f-triangles
      (1 (triangle (x 0.1) (y 0.1)
                   (alpha -0.33) (hue 20) (saturation 0.7) (brightness 0.80))
         (triangle (hue 10) (saturation 0.9) (brightness 0.33))
         (triangle (scale 0.9) (hue 10) (saturation 0.5) (brightness 1.00))
         (f-triangles (scale 0.8) (rotate 5))))

(init-cfdg)

(background (hue 66) (saturation 0.4) (brightness 0.5))

(bounds -5 5 -5 5)

(start-shape start)

