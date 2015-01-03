(ns pe.clojure.implementation.problem0005)


(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use 'utilities.math)

(defn lcmOfList [upToWhatNumber]
  (reduce lcm (range 1 (+ upToWhatNumber 1))))
