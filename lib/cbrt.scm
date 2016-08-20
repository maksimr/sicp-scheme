;; Exercise 1.8.  Newton's method for cube roots is based on the fact that if
;; y is an approximation to the cube root of x, then a better approximation is given by the value


(define (abs x)
  (if (> x 0)
      x
      (- x)))


(define (square x)
  (* x x))


(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* guess 2))
     3))


(define (good-enough? guess x)
  (< (abs (- guess
             (improve guess x))) 0.001))


(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))


(define (cbrt x)
  (cbrt-iter 1.0 x))


(cbrt 27)
