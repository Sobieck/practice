(ns pe.clojure.implementation.problem0029)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])
(use '[utilities.math :as util.math])
(use '[clojure.set :as cl.set])


(defn twoToXInts [x]
  (->> (util.seq/firstInts x)
       rest))

(defn exponentiateNumberFromTwoToX [number toX]
  (->> (twoToXInts toX)
       (map (fn[exponent] (util.math/bigIntPow number exponent)))
       set))

(defn distinctPowersBetween2And [toX]
  (->> (twoToXInts toX)
       (map (fn[number] (exponentiateNumberFromTwoToX number toX)))
       (reduce cl.set/union)
       count))


(defn distinctPowersBetween2AndParallel [toX]
  (->> (twoToXInts toX)
       (pmap (fn[number] (exponentiateNumberFromTwoToX number toX)))
       (reduce cl.set/union)
       count))
