; Working off the PE explanation sheet. https://projecteuler.net/overview=003

(ns pe.clojure.implementation.problem0003)


(defn largestPrimeFactor [numberToFactor]
  (apply max (primeFactors numberToFactor)))


(defn primeFactors [numberToFactor]
  (loop [factorBy 2
         currentNumberToFactor numberToFactor
         primeFactors #{}]
    (cond
     (> factorBy currentNumberToFactor) primeFactors
     (= 0 (mod currentNumberToFactor factorBy)) (recur factorBy
                                                (/ currentNumberToFactor factorBy)
                                                (conj primeFactors factorBy))
     :else (recur (inc factorBy) currentNumberToFactor primeFactors))))


