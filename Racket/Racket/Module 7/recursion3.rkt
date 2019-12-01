;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname recursion3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum L) (foldr + 0 L))

(define (divide-each L sum)
  (cond
    [(empty? L) '()]
    [else (cons (/ (first L) sum) (divide-each (rest L) sum))]
    )
  )

(define (portions L)
  (divide-each L (sum L)))

(portions (list 1 1 2))