;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname non-decreasing) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (increasing n L)
  (cond
    [(empty? L) '()]
    [(>= (first L) n) (cons (first L) (increasing (first L) (rest L)))]
    [else (increasing (first L) (rest L))]
    )
  )


(define (non-decreasing L)
  (increasing (first L) L)
  )

(non-decreasing (list 2 3 1 6 8 6 4 8 1 9))