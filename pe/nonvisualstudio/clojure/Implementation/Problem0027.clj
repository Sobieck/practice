(ns pe.clojure.implementation.problem0027)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Primes.clj")
(use '[utilities.primes :as util.primes])

(defn generatesAPrime [[a b] n]
  (util.primes/isPrime
    (+
      (* n n)
      (* n a)
      b)))

(defn numberOfConsecutivePrimesProducedByQuadraticFormula [[a b]]
  (loop [numberOfPrimes 0]
    (if
      (generatesAPrime [a b] numberOfPrimes)
      (recur (inc numberOfPrimes))
      [numberOfPrimes [a b]])))

(defn generateListOfBs [maxExclusive]
  (let
    [primes
      (->>
        (util.primes/lazyPrimes 1)
        (take-while (partial > maxExclusive)))
    negativePrimes
      (->>
        (map - primes)
        reverse)]
      (concat negativePrimes primes)))

(defn maxConPrimesGeneratedGivenB [b maxExclusive]
  (loop
    [result [0 [0 b]]
     currentA (- (dec maxExclusive))]
     (cond
       (= currentA maxExclusive) result
       (>
         (first (numberOfConsecutivePrimesProducedByQuadraticFormula [currentA b]))
         (first result))
         (recur (numberOfConsecutivePrimesProducedByQuadraticFormula [currentA b]) (inc currentA))
       :else (recur result (inc currentA)))))

(defn quadraticFormulaThatProducesTheMostPrimes [maxExclusive]
  (apply max-key first
    (->>
      (generateListOfBs maxExclusive)
      (pmap
        (fn
          [currentB]
          (maxConPrimesGeneratedGivenB currentB maxExclusive))))))
