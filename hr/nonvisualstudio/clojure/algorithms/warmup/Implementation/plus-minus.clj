(ns hr.clojure.algorithms.warmup.implementation.plus-minus)

(defn conditional-count
  [function list]
  (->>
    (filter function list)
    count))

(defn format-fraction
  [numerator denominator]
  (->>
    (/ numerator denominator)
    double
    (format "%.6f")))
