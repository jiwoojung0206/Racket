;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname area-triangle) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;;(area-triangle b h) returns area of triangle with base b and height h.
;; num + num -> num

(define (area-triangle b h)
  (/ (* b h) 2))

(area-triangle 0.5 6)
