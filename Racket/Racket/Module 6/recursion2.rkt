;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname recursion2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (sum-to n)
  (cond
    [(= n 0) 0]
    [else (+ n (sum-to (- n 1)))]
    )
  )

(sum-to 4)

(define (countdown n)
  (cond
    [(= n 0) '(0)]
    [else (cons n (countdown (- n 1)))]
    )
  )

(countdown 5)