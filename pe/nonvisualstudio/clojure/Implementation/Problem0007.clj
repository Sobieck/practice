(ns pe.clojure.implementation.problem0007)


(defn lazyPrimes [startNumber]
  (cons startNumber
    (lazy-seq
      (lazyPrimes
        (.nextProbablePrime
          (BigInteger/valueOf startNumber))))))

(defn nthPrime [nthPrime]
  (nth
    (lazyPrimes 2)
    (- nthPrime 1)))
