;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname acronymize) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (acronymize L)
  (foldr string-append "" (foldr (lambda (a b) (cons (substring a 0 1) b)) '() L))
  )

(acronymize (list "Portable" "Net" "Graph"))