(ns hr.clojure.algorithms.warmup.implementation.a-very-big-sum)

(use '[clojure.string :only (split triml replace)])

(defn splitAtSpace
  [string]
  (split string #"\s+"))

(defn castToBigInt
  [string]
   (BigInteger. string))

(defn sumStrings
  [string]
  (->> (splitAtSpace string)
    (map castToBigInt)
    (reduce +)))

;; IO
;(let [a (read-line)
;      b (read-line)]
;          (print (str (sumStrings b))))
