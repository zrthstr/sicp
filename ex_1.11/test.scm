; Exercise 1.11.
;
; A function f is defined by the rule that:
;		* f(n) = n if n<3 and 
;		* f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. 
;
; Write a procedure that computes f by means of a recursive process. Write a procedure
; that computes f by means of an iterative process.


( define (f n)
					( cond ((< n 3) n)
								 (else (+
												 (f (- n 1))
												 (* 2(f(- n 2)))
												 (* 3 (f(- n 3)))
														))))

(display ( f 0)) (newline)
(display ( f 1)) (newline)
(display ( f 2)) (newline)
(display ( f 3)) (newline)
(display ( f 4)) (newline)
(display ( f 5)) (newline)
(display ( f 6)) (newline)
(display ( f 7)) (newline)


( define (f-iter x y z n)
				 (cond ((= n 0) x )
							 ( else  (f-iter y z (+ z (* 2 y)(* 3 x)) (- n 1)))))

( define ( fi n )
			( f-iter 0 1 2 n ))


(display ( fi 0)) (newline)
(display ( fi 1)) (newline)
(display ( fi 2)) (newline)
(display ( fi 3)) (newline)
(display ( fi 4)) (newline)
(display ( fi 5)) (newline)
(display ( fi 6)) (newline)
(display ( fi 7)) (newline)

