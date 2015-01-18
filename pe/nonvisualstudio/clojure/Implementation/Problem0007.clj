(ns pe.clojure.implementation.problem0007)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Primes.clj")
(use '[utilities.primes :as util.primes])

(defn nthPrime [nthPrime]
  (nth
    (util.primes/lazyPrimes 2)
    (- nthPrime 1)))
