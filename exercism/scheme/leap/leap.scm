(import (rnrs))

(define (leap-year? year)
	(if (div? year 4)
				(if (div? year 100)
							(if (div? year 400)
								#t
								#f
								)
							#t
				 )
				#f
  ))

( define ( div? n by)
	( zero? (remainder n by)))

(display ( leap-year? 2002))
(display ( leap-year? 2001))
(display ( leap-year? 2004))
