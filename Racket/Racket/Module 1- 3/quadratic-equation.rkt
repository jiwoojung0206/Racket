;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |quadratic equation|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (root-plus a b c) gives the more positive root of the equation y=ax^2 + bx + c
;; num + num + num -> num

(define (root-plus a b c)
  (cond
    [(> 0 (- (sqr b) (* 4 a c))) "no real root"]
    [else (/ (- (sqrt (- (sqr b) (* 4 a c))) b) (* 2 a))]
    ))

(check-expect (root-plus 1 -8 15) 5)
(root-plus 3 -6 1)
(root-plus 2 1 3)


;; (root-minus a b c) gives the more negative root of the equation y=ax^2 + bx + c
;; num + num + num -> num

(define (root-minus a b c)
  (cond
    [(> 0 (- (sqr b) (* 4 a c))) "no real root"]
    [else (/ (- (* -1 (sqrt (- (sqr b) (* 4 a c)))) b) (* 2 a))]
    ))

(root-minus 1 -8 15)
(root-minus 3 -6 1)
(root-minus 2 1 3)


  