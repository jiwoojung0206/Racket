;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |foldr-exercise 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (cube n)
  (* n n n))

(define (list-cubes n)
  (map cube (range 1 (+ n 1) 1)))

;;(list-cubes 4)

(define (prod L)
  (foldr * 1 L))

;; (prod (list 2 2 3 5))


;;(factorial n) gives the factorial of number n
;;(factorial n): Num -> Num

(define (factorial n)
  (foldr * 1 (range 1 (+ n 1) 1))
  )

(factorial 4)
