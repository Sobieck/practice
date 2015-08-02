(ns hr.clojure.algorithms.implementation.implementation.chocolate-feast)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use '[utilities.math :as util.math])

;; Stuff for IO
(use '[clojure.string :only (split triml)])

(defn int-division
  [numerator denominator]
  (->>
    (/ numerator denominator)
    int))
;;


(defn number-to-purchase
  [totalToSpend costPerChocolate]
  (int-division
    totalToSpend
    costPerChocolate))

(defn number-of-freebies
  [totalWrappers wrappersPerFreebie]
  [(int-division
    totalWrappers
    wrappersPerFreebie)
   (int
     (mod
       totalWrappers
       wrappersPerFreebie))])

(defn total-chocolates-consumed
  [totalToSpend
   costPerChocolate
   wrappersPerFreebie]
   (let [purchasedChocolates (number-to-purchase totalToSpend costPerChocolate)
         freebies (first (number-of-freebies purchasedChocolates wrappersPerFreebie))
         totalChocolates [purchasedChocolates freebies]
         startRemainder (second (number-of-freebies purchasedChocolates wrappersPerFreebie))]
         (loop
           [chocs totalChocolates
            remainder startRemainder]
           (cond
             (<
               (+ remainder (last chocs)) wrappersPerFreebie)
               (reduce + chocs)
             :else
              (recur
                (conj chocs (first (number-of-freebies (+ (last chocs) remainder) wrappersPerFreebie)))
                (second (number-of-freebies (+ (last chocs) remainder) wrappersPerFreebie)))))))

;; IO

(defn split-at-space
  [string]
  (split string #" "))

(defn split-at-space-and-parse-number
  [string]
  (map read-string
    (split-at-space string)))

(defn parse-vector-of-vectors
  [vectorOfVectors]
  (loop
    [input vectorOfVectors
     result []]
     (if
       (empty? input)
       result
       (recur
         (rest input)
         (conj
           result
           (split-at-space-and-parse-number
             (first
               (first input))))))))

;;;just hacked away at... not unit tested :(
(defn create-vector-of-numbers-from-io
  [size inputVector]
  (loop
    [remaining size
     currentVector inputVector]
    (if (= remaining 0)
      (parse-vector-of-vectors currentVector)
      (recur
        (- remaining 1)
        (conj currentVector [(read-line)])))))


;IO for when there is an arbitrary number of lines.
(let [sizeOfArray (read-string (read-line))
      inputArray (create-vector-of-numbers-from-io sizeOfArray [])]
      (loop
        [inputs inputArray]
          (println
            (total-chocolates-consumed
              (first (first inputs))
              (second (first inputs))
              (last (first inputs))))
          (cond
            (not= inputs [])
            (recur
              (rest inputs)))))
