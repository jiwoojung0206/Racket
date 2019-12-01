;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname add-n-each-lambda) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (add-n-each n L)
  (map (lambda (x) (+ x n)) L))

(define (add-n-each2 n L)
  (foldr (lambda (a b) (cons (+ a n) b)) '() L))

(add-n-each 7 (list 2 4 8))
(add-n-each2 7 (list 2 4 8))