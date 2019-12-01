;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname lambda3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (my-map F L)
  (foldr (lambda (a b) (cons (F a) b)) '() L))


(my-map sqr (list 4 5 3))


(define (bigaverage L)
  (filter (lambda (x) (>= x (/ (foldr + 0 L) (length L)))
            ) L
          )
  )

(bigaverage (list 2 4 6 8 10))
