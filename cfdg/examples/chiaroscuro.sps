
;; Based on the original at:
;; 
;;     http://www.contextfreeart.org/gallery/view.php?id=541
;;
;; Ported to Scheme by Ed Cavazos

(import (psilab cfdg core)
        (psilab cfdg rule))

(rule black
      (60 (circle (scale 0.6))
          (black (x 0.1)
                 (rotate 5)
                 (scale 0.99)
                 (brightness -0.01)
                 (alpha -0.01)))

      (1 (white) (black)))

(rule white
      (60 (circle (scale 0.6))
          (white (x 0.1)
                 (rotate -5)
                 (scale 0.99)
                 (brightness 0.01)
                 (alpha -0.01)))

      (1 (black) (white)))

(rule chiaroscuro
      (1 (black (brightness 0.5))))

(init-cfdg)

(background (brightness -0.5))

(bounds -3 3 -2 4)

(start-shape chiaroscuro)

