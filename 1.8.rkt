#lang racket
(define (3sqrt x)
   (3sqrt-iter 1.0 x))
(define (3sqrt-iter guess x)
  (if (evaluate-guess guess x)
       guess
      (3sqrt-iter (improve guess x) x)))
(define (evaluate-guess guess x)
  (< (abs (- x (3sqr guess))) 0.01))
(define (improve guess x)
  (/ (+
      (/ x (sqr guess))
      (* 2 guess))
     3))
(define (3sqr x)
  (* x x x))

(3sqrt 8)



