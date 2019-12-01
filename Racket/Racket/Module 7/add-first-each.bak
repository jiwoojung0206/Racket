;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname add-first-each) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (add-n-to-each n L)
  (cond
    [(empty? L) '()]
    [else (cons (+ (first L) n) (add-n-to-each n (rest L)))]
    )
  )
  

(define (add-first-each L)
  (add-n-to-each (first L) L))


(add-first-each (list 3 2 7 6 5))