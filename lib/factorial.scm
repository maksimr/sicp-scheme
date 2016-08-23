;; We should distinguish procedure from process
;; because procedure can be recursive but process which born this procedure
;; can be iterative


;; Recursive procedure and Linear recursive process
;; Recursive process - the type of process characterized by a chain of deferred operations
;;
;; (factorial-rec 3)
;;   (* 3 (factorial-rec 2))
;;     (* 2 (factorial-rec 1))
;;       (* 1 (factorial-rec 0))
;;       (* 1 1)
;;     (* 2 1)
;;   (* 3 2)
;; 6
(define (factorial-rec x)
  (if (< x 1)
      1
      (* x
         (factorial-rec (- x 1)))))



;; Recursive procedure and Linear iterative process
;; Iterative process - is one whose state can be summarized by a fixed number
;; of state variables, together with a fixed rule that describes
;; how the state variables should be updated as the process moves from state
;; to state and an (optional) end test that specifies conditions under which
;; the process should terminate
;;
;; (factorial 3)
;; (factorial-iter 1 1 3)
;; (factorial-iter 1 2 3)
;; (factorial-iter 2 3 3)
;; (factorial-iter 6 4 3)
;; 6
(define (factorial-iter x)
  (define (factorial counter product x)
    (if (> counter x)
        product
        (factorial (+ 1 counter)
                   (* product counter x))))
  (factorial 1 1 x)



(factorial-rec 3)
(factorial-iter 3)
