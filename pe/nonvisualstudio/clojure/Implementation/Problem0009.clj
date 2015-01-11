(ns pe.clojure.implementation.problem0009)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])

(defn euclidsFormula [m n]
  (let [a (- (* m m) (* n n))
        b (* 2 m n)
        c (+ (* m m) (* n n))]
    [a b c]))

(defn findFirstTripleThatSumsTo [target]
  (loop [m 2
         n 1]
    (let [triple (euclidsFormula m n)
          sumOfTriple (util.seq/sum triple)]
      (cond
        (= sumOfTriple target)
          triple
        (= m n)
          (recur (inc m) 1)
        :else
          (recur m (inc n))))))

(defn productOfTheFirstTripleThatSumsTo [target]
  (->>
    (findFirstTripleThatSumsTo target)
    (util.seq/product)))
