(ns pe.clojure.implementation.problem0029)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])
(use '[utilities.math :as util.math])
(use '[clojure.set :as cl.set])


(defn TwoToXInts [x]
  (->> (firstInts x)
       rest))

(defn exponentiateNumberFromTwoToX [number toX]
  (->> (TwoToXInts toX)
       (map (fn[exponent] (bigIntPow number exponent)))
       set))

(defn distinctPowersBetween2And [toX]
  (->> (TwoToXInts toX)
       (map (fn[number] (exponentiateNumberFromTwoToX number toX)))
       (reduce cl.set/union)
       count))


(defn distinctPowersBetween2AndParallel [toX]
  (->> (TwoToXInts toX)
       (pmap (fn[number] (exponentiateNumberFromTwoToX number toX)))
       (reduce cl.set/union)
       count))
