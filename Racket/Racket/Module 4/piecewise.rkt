;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname piecewise) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (f x)
  (cond
    [(<= x 1) (* 2 x)]
    [(>= x 3) (- (/ (* 2 x) 3) 1)]
    [else (/ (- 5 x) 2)]
    )
  )

(f 1)
(f 2)
(f 4.5)
