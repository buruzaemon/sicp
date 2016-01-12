;; ex 1.9 
;;
;; From the shape of procedure 1 below,
;; this appears to be a recursive process.
(define (+ a b)
  (if (= a b)
    b
    (inc (+ (dec a) b))))
;; (+ 4 5)
;; ------
;; (inc (+ (3) 5))
;; (inc 8)
;; (9)

;; In contrast, the shape of procedure 2
;; looks to be iterative.
(define (+ a b)
  (if (= a b)
    b
    (+ (dec a) (inc b))))
;; (+ 4 5)
;; ------
;; (+ (3) (6))
;; (9)
