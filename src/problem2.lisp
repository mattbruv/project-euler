;; Each new term in the Fibonacci sequence is generated by adding the previous two terms.
;; By starting with 1 and 2, the first 10 terms will be:
;; 
;; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;; 
;; By considering the terms in the Fibonacci sequence whose values do not exceed four million,
;; find the sum of the even-valued terms.

(defun fib (n1 n2 result)
  (let ((next (+ n1 n2)))
    (if (> next 4000000)
        result
        (if (= 0 (mod next 2))
            (fib n2 next (+ result next))
            (fib n2 next result)))))

(defun problem2 () (fib 1 1 0))

;; 4613732