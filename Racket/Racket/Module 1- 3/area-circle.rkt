;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname area-circle) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;;(area-circle r) returns area of circle with radius r.
;; num -> num

(define (area-circle r)
  (* pi (sqr r)))

(area-circle 2)


(map area-circle (list 2 5 7 11))