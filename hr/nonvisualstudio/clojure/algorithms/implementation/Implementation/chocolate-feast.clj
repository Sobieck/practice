(ns hr.clojure.algorithms.implementation.implementation.chocolate-feast)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use '[utilities.math :as util.math])

(defn number-to-purchase
  [totalToSpend costPerChocolate]
  (int-division
    totalToSpend
    costPerChocolate))
