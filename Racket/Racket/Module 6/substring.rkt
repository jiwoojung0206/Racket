;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname substring) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
 
;; (substrings-w-len s n) returns all substrings of length n
;; (substrings-w-len s n): Str + Nat -> (list of Str)

(define (substring-w-len-helper s n m l)
  (cond
    [(= l 0) '()]
    [else (cons (substring s (- (- n l) 1) m) (substring-w-len-helper s n (+ m 1) (- l 1)))]
    )
  )

(define (substrings-w-len s n)
  (substring-w-len-helper s n n (+ 1 (- (string-length s) n))))





(substrings-w-len "foobar" 5)

(substring "foobar" 0 4)
(substring "foobar" 1 5)
(substring "foobar" 2 6)