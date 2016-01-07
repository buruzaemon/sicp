;; ex 1.3
(define (sq x) (* x x))
(define (sum-of-sq x y) (+ (sq x) (sq y)))
(define (sq-the-larger a b c)
  (cond ((and (< a b) (< a c)) (sum-of-sq b c))
        ((and (< b a) (< b c)) (sum-of-sq a c))
        ((and (< c a) (< c b)) (sum-of-sq a b))
  )
)

