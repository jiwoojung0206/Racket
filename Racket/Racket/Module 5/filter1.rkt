;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname filter1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;;Exercise 1

(define (tenthirty Num)
  (cond
    [(and (<= 10 Num) (>= 30 Num)) #true]
    [else #false]
    )
  )

(define (keep-inrange L)
  (filter tenthirty L)
  )

(keep-inrange (list -5 10.1 12 7 30 3 19 6.5 42))


;;Exercise 2

(define (pythagorean-triple L)
  (cond
    [(and (< (first L) (second L))
          (< (second L) (third L))
          (= (sqr(third L)) (+ (sqr(first L)) (sqr(second L)))))
     #true]
    [else #false]
    )
  )

(pythagorean-triple (list 0 1 1))

(define (pythagoreans L)
  (filter pythagorean-triple L))

 (pythagoreans
  (list (list 1 2 3) (list 3 4 5) (list 5 12 13) (list 4 5 6)))
