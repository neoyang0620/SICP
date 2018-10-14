#lang racket

(define (sqrt x)
   (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (evaluate-guess guess (improve guess x))
       guess
      (sqrt-iter (improve guess x) x)))

(define (evaluate-guess guess newguess)
  (> 0.001
     (/ (abs (- guess newguess)) guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(display (sqrt 6000000000000000000000000000000000000000000000000000000000000000))
(newline)
(display (sqrt 0.00000000006))


