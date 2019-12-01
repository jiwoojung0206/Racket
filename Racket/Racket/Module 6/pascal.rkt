;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname pascal) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (pascal n) returns a (list of (list of Nat)) containing the first n rows of Pascal Triangle
;; (pascal n): Num -> (list of (list of Nat))

(define (factorial n)
  (cond
    [(= n 0) 1]
    [else (* n (factorial (- n 1)))]
    )
  )

(factorial 4)

(define (pascal0 n)
  (map (lambda (x) (/ (factorial n) (* (factorial x) (factorial (- n x)))))
       (range 0 (+ n 1) 1))
  )

(pascal0 4)

(define (pascal n)
  (map pascal0 (range 0 n 1))
  )

(pascal 5)
  

