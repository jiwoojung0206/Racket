;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname foldr-filter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (filter-even L)
  (filter even? L))

(filter-even (list 2 3 5 6 8))


(define (add-even a L)
  (cond
    [(even? a) (cons a L)]
    [else L]
    ))

(define (foldr-even L)
  (foldr add-even '() L)
  )

(foldr-even (list 2 3 5 6 8))