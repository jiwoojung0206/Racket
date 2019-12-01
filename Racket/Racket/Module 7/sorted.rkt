;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname sorted) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (increasing n L)
  (cond
    [(empty? L) #true]
    [(>= (first L) n) (increasing (first L) (rest L))]
    [else #false]
    )
  )

(define (sorted? L)
  (increasing (first L) L))

(sorted? (list 2 3 3 5 7))
(sorted? (list 2 3 5 3 7))

