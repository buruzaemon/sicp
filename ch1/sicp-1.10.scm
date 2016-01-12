;; ex 1.10
;;
;;  
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;; (A 1 10) returns 2^10 = 1024
;; (A 2 4)  returns 65536 
;; (A 3 3)  returns 65536

;; f(n) ... multiples of 2
(define (f n) (A 0 n))

;; g(n) ... powers of 2
(define (g n) (A 1 n))

;; h(n) ... 
(define (h n) (A 2 n))

;; k(n) ... 5 * n^2
(define (k n) (* 5 n n))
