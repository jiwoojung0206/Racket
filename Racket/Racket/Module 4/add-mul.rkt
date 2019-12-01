;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname add-mul) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (addmul-int n1 n2) takes two integers
;; the function adds two numbers if n1 is even
;; and multiplies two numbers if n1 is odd
;; (addmul-int n1 n1): Int Int -> Int

(define (addmul-int n1 n2)
  (cond
    [(even? n1) (+ n1 n2)]
    [(odd? n1) (* n1 n2)]
    )
  )


;; (add-mul L) takes a list of Int
;; i) if the next Int is even, it adds to the total
;; ii) if the next Int is odd, it multiplies to the total
;; (add-mul L): list of Int -> Num

(define (add-mul L)
  (foldr addmul-int 0 L)
  )

(add-mul (list 4 8 5 3 2))


