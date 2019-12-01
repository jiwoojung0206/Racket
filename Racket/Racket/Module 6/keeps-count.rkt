;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname keeps-count) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (keep-counts L threshold mincount) returns a list containing all the values in L which contain at least mincount values greater than threshold
;; (keep-counts L threshold mincount): (list of (list of Num)) + Num + Num -> (list of (list of Num))

(define (counts L threshold)
  (length (filter (lambda (x) (> x threshold)) L)))

(counts (list 1 1 2 5) 2)

(define (keep-counts L threshold mincount)
  (filter (lambda (x) (>= (counts x threshold) mincount)) L)
  )



(keep-counts (list (list 1 1 2 5) (list 1 4 4 1) (list 6 6 4 7)) 2 2)