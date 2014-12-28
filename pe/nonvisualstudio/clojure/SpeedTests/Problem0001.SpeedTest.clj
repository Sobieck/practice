;; Anything you type in here will be executed
;; immediately with the results shown on the
;; right.

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0001.clj")
(use 'pe.clojure.implementation.problem0001)

;; Five Iterations
; (time (sumOfMultiplesOfFiveAndThree 10000))     ;;   0.80 -   0.83 msecs
; (time (sumOfMultiplesOfFiveAndThree 100000))    ;;   7.65 -   8.00 msecs
; (time (sumOfMultiplesOfFiveAndThree 1000000))   ;;  75.00 -  77.00 msecs
; (time (sumOfMultiplesOfFiveAndThree 10000000))  ;; 742.00 - 773.00 msecs
; (time (sumOfMultiplesOfFiveAndThree 100000000)) ;;7312.00 -7479.13 msecs


;;Not good...

; (time (sumOfMultiplesOfFiveAndThreeWithReducer 10000))    ;; 0.80 - 0.94 msecs
; (time (sumOfMultiplesOfFiveAndThreeWithReducer 100000))   ;; 7.26 - 7.34 msecs
; (time (sumOfMultiplesOfFiveAndThreeWithReducer 1000000))  ;; 71.97 - 73.00 msecs
; (time (sumOfMultiplesOfFiveAndThreeWithReducer 10000000)) ;; 701.55 - 1395.45
; (time (sumOfMultiplesOfFiveAndThreeWithReducer 100000000));;11843-27127


; (load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0001.Spec.clj")