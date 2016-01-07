;; ex 1.4
;; a-plus-abs-b first checks argument b to see
;;    if greater than 0
;;      then apply + operator
;;    else
;;      then apply - operator
;;    ... to operands a b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
