;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname cond2-nested) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (admission after5? age)
  (cond
    [after5? 0]
    [(<= age 10) 5]
    [else 10])
  )


(check-expect (admission #false 15) 10)
(check-expect (admission #true 15) 0)
(check-expect (admission #false 3) 5)

