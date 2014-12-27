(ns pe.clojure.implementation.problem0001)

(use 'clojure.core.reducers)

(defn isMultiple [number multipleOf]
  (= 0 (mod number multipleOf)))

(defn isMultipleOf3Or5 [number]
  (cond
   (isMultiple number 3) true
   (isMultiple number 5) true
   :else false))

(defn generateList [zeroUpToWhatNumber]
  (range 1 zeroUpToWhatNumber))

(defn sumOfMultiplesOfFiveAndThree [zeroUpToWhatNumber]
  (reduce
   +
   (filter
    isMultipleOf3Or5
    (generateList zeroUpToWhatNumber))))


;;Parallel

(defn returnZeroIfNotMultipleOf3Or5 [number]
  (cond
   (isMultipleOf3Or5 number) number
   :else 0))


(defn sumOfMultiplesOfFiveAndThreeParallel [zeroUpToWhatNumber]
  (reduce
   +
   (pmap
    returnZeroIfNotMultipleOf3Or5
    (generateList zeroUpToWhatNumber))))


;; Benchmark - NonParallel - 5 times

;; 10000    :    5 -    9 msecs
;; 100000   :   70 -   76 msecs
;; 1000000  :  776 -  815 msecs
;; 10000000 : 7966 - 8200 msecs

;; Benchmark - Parallel - 5 times

;; 10000    : 434 - 520 msec
;; 100000   :
;; 1000000  :
;; 10000000 :
