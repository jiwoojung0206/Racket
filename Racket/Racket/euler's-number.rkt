;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |euler's-number|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;(factorial n) gives the factorial of number n
;;(factorial n): Num -> Num

(define (factorial n)
  (foldr * 1 (range 1 (+ n 1) 1))
  )


;; (approx-e n) returns the approximation of e using n terms
;; Num -> Num

(define (1divide L)
  (/ 1 L))

(define (approx-e n)
  (foldr + 0(map 1divide (map factorial (range 0 n 1))))
  )

(approx-e 100)
(approx-e 2)
  
