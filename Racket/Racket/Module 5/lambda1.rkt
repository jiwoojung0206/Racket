;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname lambda1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (cube L)
  (map (lambda (num) (expt num 3)) L)
  )

(cube (list 1 2 3))

(define (evenorodd num sum)
  (cond
    [(even? num) (+ num sum)]
    [else sum]
    )
  )



(define (sum-evens L)
  (foldr (lambda (a b) (cond
                         [(even? a) (+ a b)]
                         [else b]
                         )
           ) 0 L)
  )

(sum-evens (list 2 3 4 5))
