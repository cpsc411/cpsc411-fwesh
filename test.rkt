#lang racket

(require
  rackunit
  rackunit/text-ui
  "main.rkt")

(define-test-suite fwesh-tests
  (test-case "uwuify strings"
             (check-equal? (uwuify "hello")
                           "hewwo")
             (check-equal? (uwuify "HELLO")
                           "HEWWO")
             (check-equal? (uwuify "no")
                           "nyo")
             (check-equal? (uwuify "NO")
                           "NYO")
             (check-equal? (uwuify "love")
                           "wuv"))
  (test-case "uwuify symbols"
             (check-equal? (uwuify 'hello)
                           'hewwo)
             (check-equal? (uwuify 'HELLO)
                           'HEWWO)
             (check-equal? (uwuify 'no)
                           'nyo)
             (check-equal? (uwuify 'NO)
                           'NYO)
             (check-equal? (uwuify 'love)
                           'wuv))
  (test-case "fwesh"
             (check-equal? (fwesh 'hello)
                           'hewwo.1)
             (check-equal? (fwesh "HELLO")
                           'HEWWO.2)
             (check-equal? (fwesh "no")
                           'nyo.3)
             (check-equal? (fwesh "NO")
                           'NYO.4)
             (check-equal? (fwesh "love")
                           'wuv.5)
             (check-equal? (fwesh)
                           'twp.6)))

(run-tests fwesh-tests)