;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname good-ticket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define (week-days week day)
  (+ (* 7 week) day)
  )

(define (ticketdate type)
  (cond
    [(equal? type "day") 1]
    [(equal? type "week") 7]
    [(equal? type "month") 30]
    )
  )

(define (good-ticket? type stamp-week stamp-day curr-week curr-day)
  (cond
    [(< (- (week-days curr-week curr-day) (week-days stamp-week stamp-day) ) (ticketdate type)) #true]
    [else #false]
    ))

(good-ticket? "week" 15 4 16 4)
(good-ticket? "week" 16 4 16 4)