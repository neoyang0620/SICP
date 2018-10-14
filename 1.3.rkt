#lang racket
(define (sum_of_square x y)
  (+ (* x x) (* y y)))
(define (find_larger_two_and_square x y z)
  (cond  ((and (< x y) (< x z)) (sum_of_square y z))
         ((and (< y x) (< y z)) (sum_of_square x z))
         (else (sum_of_square y z))))
(find_larger_two_and_square 1 2 3)