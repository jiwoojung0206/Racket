;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname fold-sub) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (fold-sub L)
  (foldr - 0 L)
  )

(fold-sub (list 6 5 2))


;; 6 - (5 - (2 - 0)))
