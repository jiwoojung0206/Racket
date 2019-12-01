;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname average) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (average L) returns the average of a non-empty list of Num
;; (average L): list of Num -> Num

(define (average L)
  (/ (foldr + 0 L) (length L))
  )

(average (list 2 4 9))
(average (list 4 5 6 6))