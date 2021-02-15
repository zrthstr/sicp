; increment N by I

(define (inc n i)
(if (= i 0)
	n
	(inc (+ n 1)(- i 1))
	))


(inc 10 4)
