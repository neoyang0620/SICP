#lang racket
(define (sqrt x)
  (define (sqrt-iter guess)
    (if (evaluate-guess guess)
        guess
        (sqrt-iter (improve guess))))
  (define (evaluate-guess guess)
    (< (abs (- x (sqr guess))) 0.01))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))

  (sqrt-iter 1.0))

(sqrt 4)