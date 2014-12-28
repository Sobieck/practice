(ns pe.clojure.implementation.problem0002)

(defn generateFibonacciNumbersLessThan [maximumExclusive]
  (letfn [(lazyFib [a b] (cons a (lazy-seq (lazyFib b (+ a b)))))]
    (take-while (partial > maximumExclusive) (lazyFib 1 2))))

(defn filterEvens [listToFilter]
  (filter even? listToFilter))

(defn sumOfEvenFibonaccisLessThan [maximumExclusive]
  (->> (generateFibonacciNumbersLessThan maximumExclusive)
       (filterEvens)
       (reduce +)))

