;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname add-index) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (add-index L)
  (add-counter-from L 0))

(define (add-counter-from L n)
  (cond
    [(empty? L) '()]
    [else (cons (+ (first L) n) (add-counter-from (rest L) (+ n 1)))]
    )
  )

(add-index (list 0 0 0))
(add-index (list 2 3 5 7 11))