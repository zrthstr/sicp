Exercise 1.7: the good-enough? test used in computing
square roots will not be very effective for finding the square
roots of very small numbers. Also, in real computers, arith-
metic operations are almost always performed with lim-
ited precision. is makes our test inadequate for very large
numbers. Explain these statements, with examples showing
how the test fails for small and large numbers. An alterna-
tive strategy for implementing good-enough? is to watch
how guess changes from one iteration to the next and to
stop when the change is a very small fraction of the guess.
Design a square-root procedure that uses this kind of end
test. Does this work beer for small and large numbers?
