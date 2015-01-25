;To Use
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Primes.clj")
;(use '[utilities.primes :as util.primes])

(ns utilities.primes)

(defn lazyPrimes [startNumber]
  (cons startNumber
    (lazy-seq
      (lazyPrimes
        (.nextProbablePrime
          (BigInteger/valueOf startNumber))))))

(defn isPrime [n]
  (.isProbablePrime
    (BigInteger/valueOf n)
    128))
    ;second input of 128 means that you will have a false positive once every 100 billion years
    ;calculating on 10 billion computer with 10 billion possible primes every second.
    ;http://stackoverflow.com/a/27449187/2740086
