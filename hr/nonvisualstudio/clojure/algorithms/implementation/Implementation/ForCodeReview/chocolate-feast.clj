(ns hr.clojure.algorithms.implementation.implementation.chocolate-feast)

(defn int-division
  [numerator denominator]
  (->>
    (/ numerator denominator)
    int))

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
            (> wrappersPerFreebie (+ remainder (last chocs)))
               (reduce + chocs)
             :else
              (recur
                (conj chocs (first (number-of-freebies (+ (last chocs) remainder) wrappersPerFreebie)))
                (second (number-of-freebies (+ (last chocs) remainder) wrappersPerFreebie)))))))
