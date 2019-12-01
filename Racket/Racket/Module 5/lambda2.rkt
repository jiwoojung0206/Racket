;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname lambda2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (multiply-each L n)
  (map (lambda (x) (* x n)) L))

(multiply-each (list 1 2 3) 4)


(define (add-total L)
  (map (lambda (x) (+ (foldr + 0 L) x)) L)
  )

(add-total (list 2 3 5 10))


(define (discard-bad L lo hi)
  (filter (lambda (x) (and (<= x hi) (>= x lo))) L))

(discard-bad (list 12 5 20 2 10 22) 10 20)
                   