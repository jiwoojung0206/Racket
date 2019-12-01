;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname times-row) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (times-row n len)
  (map (lambda (x) (* x n)) (range 1 (+ len 1) 1))
  )

(times-row 1 5)

(define (times-table len)
  (map (lambda (x) (times-row x len)) (range 1 (+ len 1) 1))
  )

(times-table 5)
