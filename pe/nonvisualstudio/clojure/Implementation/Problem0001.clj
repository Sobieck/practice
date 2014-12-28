(ns pe.clojure.implementation.problem0001)

(require '[clojure.core.reducers :as r])

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


;; Parallel - using reducers. pmap was a disaster. The problem size for filtering is too small for pmap.
;; This is a disaster as well.

(defn createVectorFromLazyList [listOfThings]
  (into
   []
   listOfThings))

(defn sumOfMultiplesOfFiveAndThreeWithReducer [zeroUpToWhatNumber]
  (reduce
   +
   (r/filter
    isMultipleOf3Or5
    (createVectorFromLazyList
     (generateList zeroUpToWhatNumber)))))
