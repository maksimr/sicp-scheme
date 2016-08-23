;; Ackermann's function
(define (A x y)
  (cond
   ((= y 0) 0)
   ((= x 0)
    (* 2 y))
   ((= y 1) 2)
   (else (A (- x 1)
            (A x
               (- y 1))))))



;; Mathematical definitions for function f: f(n) = 2n
(define (f n)
  (A 0 n))


;; Mathematical definitions for function g: g(n) = 2^{n}
(define (g n)
  (A 1 n))


;; Mathematical definitions for function h: h(n) = 2^2^... (n times)
;; or using tetration(hyper-4) h(n) = ^{n}2
(define (g n)
  (A 2 n))
