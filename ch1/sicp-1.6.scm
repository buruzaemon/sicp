;; ex 1.5 
;;
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
       guess
  (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (print "in improve")
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (print "in good-enough?")
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

;; The Chicken interpreter uses applicative-order.
;; This means that in new-if, both the then-clause
;; AND the else-clause will be evaluated 
;; BEFORE returning an answer.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
;; 
(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
           guess
          (sqrt-iter (improve guess x) x)))

