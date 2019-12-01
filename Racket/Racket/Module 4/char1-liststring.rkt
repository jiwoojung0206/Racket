;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname char1-liststring) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; replace-e takes in a character and replaces the character with #\* if the character is equal to #\e
;; replace-e: Char -> Char
(define (replace-e char)
  (cond
    [(char=? char #\e) #\*]
    [else char]
    )
  )

(check-expect (replace-e #\e) #\*)
(check-expect (replace-e #\a) #\a)

;; drop-e replaces character "e" in a string with "*"
;; drop-e: Str -> Str

(define (drop-e str)
  (list->string (map replace-e (string->list str)))
)

(drop-e "Hello There")