; fib fun


( define (fib n)
	(if (<= n 2)
		1
		(+ (fib (- n 1)) (fib(- n 2)))))


(fib 1)
(fib 2)
(fib 5)
(fib 10) ; should return 55
