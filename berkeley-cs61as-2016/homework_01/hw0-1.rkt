#lang racket

;; Exercise 1

(define (square x) (* x x))
(square 3)

(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 3 4)

;; Interlude

(define (divisible? n d)
  (= (remainder n d) 0))



;; Exercise 2

;; Part a

(define (can-drive age) (if (< age 16)
                         '(Not yet)
                         '(Good to go)
                         )
  )

(can-drive 14)
(can-drive 16)
(can-drive 17)

;; Part b

(define (fizzbuzz x) 
  (or
    (and (divisible? x 3) (divisible? x 5) 'fizzbuzz)
    (and (divisible? x 3) 'fizz)
    (and (divisible? x 5) 'buzz)
    x
  )
)

(fizzbuzz 15)
(fizzbuzz 9)
(fizzbuzz 10)
(fizzbuzz 7)

;; Exercise 3
;; Why did the Walrus cross the Serengeti?
;; To figure out the answer, look on Piazza for the post labeled "Answer to Homework 0-1 Exercise 3".

;; Exercise 4

;; See what happens when you type the following snippets of code into the interpreter:

(define (infinite-loop) (infinite-loop))

(if (= 3 6)
  (infinite-loop)
  (/ 4 2))

;; Now we want to see if we can write a procedure that behaves just like if. Here's our attempt:

(define (new-if test then-case else-case)
  (if test
    then-case
    else-case))

;; Let's try it out:

(new-if (= 3 6)
  (infinite-loop)
  (/ 4 2))

;; It didn't work!

;; Here is another example that breaks:

(new-if (= 3 6)
  (/ 1 0)
  (/ 4 2))

;; Why didn't new-if behave like if? It seems like new-if evaluated the infinite loop and got stuck.
;; What can you learn about if from this example? If doesn't evaluate both the then-case and the else-case. or maybe lazyly.
;; Think about this and try to figure it out. Expect to see it again.


  