;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname area-curve) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (approx-area F xmin xmax nsteps) approximates the area under F using nsteps between xmin and xmax
;; (approx-area F xmin xmax nsteps): Function + Num + Num + Num -> Num


(define (square-plus-one x)
  (+ (* x x) 1)
  )

(define (half x) (/ x 2))

(define (constant-3 x) 3)


(define (approx-area F xmin xmax nsteps)
  (foldr + 0 (map half (map F (range xmin xmax 0.5))))
  )

(approx-area square-plus-one 2 4 20)

(approx-area constant-3 1 5 100)