;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname swap-parts) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; (swap-parts s) reverses the front and back halves of s. If the length is odd, the middle character is included in the second half
;; Str -> Str
(define (swap-parts s)
    (string-append (substring s (quotient (string-length s) 2) (string-length s))
                 (substring s 0 (quotient (string-length s) 2)))
    )
 

(swap-parts "prime")
(swap-parts "module")