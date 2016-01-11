;; ex 1.7 
;;
;; Why would this not be good for values of x
;; that are very small or those that are very large?
;;
;;   (define (good-enough? guess x)
;;     (< (abs (- (square guess) x)) 0.001))
;;
;; When x is small, squaring x may result in underflow.
;; When x is large, squaring x may result in overflow.
(define (sqrt-iter2 x)
  (define (doit guess target) 
    (if (good-enough? guess target)
      guess
      (doit (improve guess) guess)))

  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))

  (define (good-enough? a b)
    (< (abs (/ (- a b) b)) 1e-9))

  (doit 1.0 x))
