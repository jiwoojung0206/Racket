;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname cons1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; cons

(cons 6 (cons 7 (cons 42 (list))))

(define (remove-second L)
  (cons (first L) (rest (rest L)))
  )

(remove-second (list 2 4 6 0 1))
(remove-second (list 2 4))


;;Foldr with cons

(foldr cons '() (list 2 3 4 5 7))

;;Exercise

(define (double n1 n2)
  (cons (* 2 n1) n2)
  )

(define (double-each L)
  (foldr double '() L)
  )

(double-each (list 1 2 3 4 5))



