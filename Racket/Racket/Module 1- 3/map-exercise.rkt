;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname map-exercise) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;(squash-range L) consumes a (list of Nat) and returns a (list of Num) so that numbers on the interval [0, 255] are scaled to the interval [0, 1]
;;squash-range: (list of Nat) -> (list of Num)

(define (divide255 n)
  (/ n 255))

(define (squash-range L)
  (map divide255 L))

(check-expect (squash-range (list 0 204 255)) (list 0 0.8 1))


;;(greet-each) takes a name and returns a greeting for each person
;;greet-each: (list of Str) -> (list of Str)

(define (abc str)
  (string-append "Hi " str))
  
(define (greet-each L)
  (map abc L))

(check-expect  (greet-each (list "Ali" "Carlos" "Sai")) (list "Hi Ali" "Hi Carlos" "Hi Sai"))
  
  
  
