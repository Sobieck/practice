(ns pe.clojure.implementation.problem0010)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Primes.clj")
(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])
(use '[utilities.primes :as util.primes])

(defn sumOfPrimesBelow [maxExclusive]
  (util.seq/sum
    (take-while
      (partial > maxExclusive)
      (util.primes/lazyPrimes 2))))
