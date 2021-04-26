; we index from 1 today, sorry..
;
;            (x=1, y=1)
;
;       (x=1, y=2)  (x=2, y=2)
;
; (x=1, y=3)  (x=2, y=3)  (x=3,y=3)
;
;


( define (lookup x y)
				 ( cond ((= x 1) 1)
								((= x y) 1)
								((= y 1) 1)
								(else (+ (lookup x (- y 1))
												 (lookup(- x 1)(- y 1))))))


( display (lookup 1 1))
( newline )
( display (lookup 2 1))
( newline )
( display (lookup 2 2))
( newline )
( display (lookup 3 1))
( newline )
( display (lookup 3 2))
( newline )
( display (lookup 3 3))
( newline )
( display (lookup 4 8)) ; 35..

