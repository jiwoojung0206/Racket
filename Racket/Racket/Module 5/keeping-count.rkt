;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname keeping-count) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (count-over L n) returns the number of values in L greater than n
;; (count-over L n): List of Num + Num-> Num

(define (count-over L n)
  (length (filter (lambda (x) (> x n)) L)
  ))

(count-over (list 2 4 5 9 7 6 3 8) 4)
(count-over (list 2 4 5 9 7 6 3 8) 10)

