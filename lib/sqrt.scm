;; Example: Square roots by Newton's method

(define (square x)
  (* x x))


(define (abs x)
  (cond
   ((< x 0)
    (- x))
   (else x)))


(define (average x y)
  (/ (+ x y)
     2))


(define (improve guess x)
  (average guess
           (/ x guess)))


(define (good-enough? guess x)
  (< (abs (- (square guess)
             x)) 0.001))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))



;; Exercise 1.7
;; Problems with sqrt realization:
;;
;; 1. when we use x smaller
;;    that hardcoded precision 0.001 (@see good-enouth?) we get wrong result
;;    for example for 0.0005 we get ~0.036 but acutal result sould be ~0.022
;;
;; 2. If we will use very large number like 123456789012345678901234567890 improve guess will return always
;;    same value because some math operations work with limited precision so we enter to endless loop(recursion)



;; Optimized for small and large numbers version of sqrt

(define (good-enough-opt? guess x)
  (< (abs (- guess
             (improve guess x))) 0.001))


(define (sqrt-iter-opt guess x)
  (if (good-enough-opt? guess x)
      guess
      (sqrt-iter-opt (improve guess x)
                     x)))


(define (sqrt-opt x)
  (sqrt-iter-opt 1.0 x))


(sqrt 0.0005)
(sqrt-opt 0.0005)
