;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname mean) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (arithmetic-mean L) returns the arithmetic mean of a list of Num
;; (arithmetic-mean L): list of Num -> Num

(define (arithmetic-mean L)
  (/ (foldr + 0 L) (length L))
  )

(arithmetic-mean (list 16 4 2 2))


;; (geometric-mean L) returns the geometric mean of a list of Num
;; (geometric-mean L): list of Num -> Num

(define (geometric-mean L)
  (expt (foldr * 1 L) (/ 1 (length L))
        )
  )

(geometric-mean (list 16 4 2 2))


;; (harmonic-mean L) returns the harmonic mena of a list of Num
;; (harmonic-mean L): list of Num -> Num

(define (reciprocal num)
  (/ 1 num))

(reciprocal 2)


(define (harmonic-mean L)
  (reciprocal (/ (foldr + 0 (map reciprocal L)) (length L)))
  )

(harmonic-mean (list 16 4 2 2))
