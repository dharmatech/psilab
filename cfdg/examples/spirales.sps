
;; Based on the original at:
;; 
;;     http://www.contextfreeart.org/gallery/view.php?id=1182
;;
;; Ported to Scheme by Ed Cavazos

(import (psilab cfdg core)
        (psilab cfdg rule))

(rule line
      (1 (a1              (x -3) (flip 90))
         (a1 (rotate 120) (x -3) (flip 90))
         (a1 (rotate 240) (x -3) (flip 90))))

(rule a1
      (1 (a1 (scale 0.95) (x 2) (rotate 12)
             (brightness 0.5) (hue 10) (saturation 1.0))
         (chunk)))

(rule chunk
      (1 (circle)
         (line (alpha -0.3) (scale 0.3) (flip 60))))

(init-cfdg)

(background (brightness -1))

(bounds -20 20 -20 20)

(start-shape line)
