;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname ponder-newitem-answer) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (ponder new-item answer)
  (cond
    [(equal? "SQUARE" new-item) (cons (sqr (first answer)) (rest answer))]
    [(equal? "POP" new-item) (rest answer)]
    [(equal? "ADD" new-item) (cons (+ (first answer) (second answer)) (rest (rest answer)))]
    [(string? new-item) (cons (* 2 (first answer)) (rest answer))]
    [else (cons new-item answer)]
    )
  )

(define (muck-after-str L)
  (foldr ponder '() L))

(muck-after-str (list 2 "X" 3 5))
(muck-after-str (list 2 "SQUARE" 3 5))
(muck-after-str (list 2 "POP" 3 5))
(muck-after-str (list 2 "ADD" 3 5))
    