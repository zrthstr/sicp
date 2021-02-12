
(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;(begin
;  (display "Hello, World!")
;  (newline)
;	True)

;( define (sqrt-iter guess x)
;	(if ( good-enough? guess x)
;		guess
;		(sqrt-iter (improve guess x) x)))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))


( define (improve guess x)
	(average guess (/ x guess)))

( define (average x y)
	(/ ( + x y) 2 ))

( define ( good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 9)
