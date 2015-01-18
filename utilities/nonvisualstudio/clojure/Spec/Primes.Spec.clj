;(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Spec/Primes.Spec.clj")

(ns utilities.primes.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Primes.clj")
(use 'utilities.primes)
(use 'clojure.test)


(deftest PrimesUtilities
  (testing "lazyPrimes"
    (is (= [2 3 5 7 11] (take 5 (lazyPrimes 2)))
    (is (= [2 3 5 7 11 13] (take 6 (lazyPrimes 2))))))

  (testing "isPrime"
    (is (isPrime 2))
    (is (isPrime 999331))
    (is (isPrime 961748941))
    (is (false? (isPrime 961748931)))
    (is (false? (isPrime 999333))))

)

(run-tests)
