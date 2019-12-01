;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname cond1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (abc num)
  (cond
    [(odd? num) (* -1 num)]
    [(even? num) num]
    )
  )


(define (neg-odd L)
  (map abc L)
  )

(neg-odd (list 2 0 8 11 14 17))