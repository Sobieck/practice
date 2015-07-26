(ns hr.clojure.algorithms.warmup.implementation.diagonal-difference)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use '[utilities.math :as util.math])
(use '[utilities.sequences :as util.seq])

(defn get-diagonal-numbers
  [vectorOfVectors]
  (loop
    [result []
     input vectorOfVectors]
     (if
       (= [] input)
       result
       (recur
         (conj
           result
           (first
             (first input)))
         (rest
           (map rest input))))))

(defn sum-diagonal
  [vectorOfVectors]
  (->>
    (get-diagonal-numbers vectorOfVectors)
    sum))

(defn abs-difference-of-diagonal-numbers
  [vectorOfVectors]
  (abs
    (-
      (sum-diagonal vectorOfVectors)
      (sum-diagonal
        (reverse vectorOfVectors)))))
