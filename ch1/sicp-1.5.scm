;; ex 1.5 
;;
;; Normal-order: 
;;   all of the operator are expanded,
;;   and only when primitive arguments are left
;;   will the evaluation take place
;;
;; Applicative-order
;;   the operatands (arguments) are evaluated first
;;
;;   in our case here, the 2nd argument test will
;;   never be evaluated as long as the (= x 0) test
;;   is true
;;
;;   the Chicken interpreter used applicative-order!
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
