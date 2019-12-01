;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname add-sub) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (add-sub-string s) consumes a Str of even length and adds or subtracts characters that follow + or -
;; (add-sub-string s): Str -> Num

(define (filter-numeric L)
(filter char-numeric? L))

;;(add-sub-string "+3+4-5")
;;(add-sub-string "-5+3+4-6-6")
                    