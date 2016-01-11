;; ex 1.8 
;;
;; Note how the only thing that has really 
;; changed is the definition for improve...
(define (cube-iter x)
  (define (doit guess target)
    (if (good-enough? guess target)
      guess
      (doit (improve guess) guess)))

  (define (improve guess)
   (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

  (define (good-enough? a b)
    (< (abs (/ (- a b) b)) 1e-9))

  (doit 1.0 x))
