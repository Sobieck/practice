(ns hr.clojure.algorithms.implementation.implementation.chocolate-feast)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use '[utilities.math :as util.math])

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
