;To Use
;(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
;(use '[utilities.math :as util.math])

(ns utilities.math)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])

(defn gcd [largerNumber smallerNumber]
  (loop [large largerNumber
         small smallerNumber]
    (let [largeModSmall (mod large small)]
      (if (zero? largeModSmall)
        small
        (recur small largeModSmall)))))

(defn lcm [largerNumber smallerNumber]
  (/ (* largerNumber smallerNumber)
     (gcd largerNumber smallerNumber)))

(defn bigIntPow [n exponent]
  (reduce
    *
    (take
      exponent
      (repeat (bigint n)))))

(defn factorial [n]
  (reduce
    *
    (util.seq/firstInts n)))

(defn abs
  [n]
  (if
    (>= n 0)
    n
    (* -1 n)))
