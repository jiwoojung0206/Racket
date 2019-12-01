;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname cons2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (square int)
  (cond
    [(integer? (sqrt int)) #true]
    [else #false]
    )
  )

(define (times-square L)
  (foldr * 1 (filter square L)))

(times-square '(1 25 5 4 1 7))
