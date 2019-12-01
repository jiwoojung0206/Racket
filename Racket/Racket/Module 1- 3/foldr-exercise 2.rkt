;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |foldr-exercise 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (remainder2 n)
  (remainder n 2))


(define (oddlist L)
  (foldr + 0 (map remainder2 L)))

;; (oddlist (list 1 3 4 5 6 7))


;; foldr only

;; (remaindersum2 n total) computes a remainder of a number divided by 2 and returns the total with remainder added
;; (remaindersum2 n total): Num Num -> Num
(define (remaindersum2 n total)
  (+ total (remainder n 2)))
 
;; (remaindersum2 15 3)

(define (oddlist2 L)
  (foldr remaindersum2 0 L))

(oddlist2 (list 1 3 4 5 6 7))


