;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname squash-bad) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (squash-bad lo hi L) consumes two Num and List of Num where values greater than hi become hi
;; and values less than lo become lo
;; (squash-bad lo hi L): Num + Num + List of Num -> List of Num

(define (squash-bad lo hi L)
  (map (lambda (x) (cond
                     [(< x lo) lo]
                     [(> x hi) hi]
                     [else x]))
       L)
  )

(squash-bad 10 20 (list 12 5 20 2 10 22))