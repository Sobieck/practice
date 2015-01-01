;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0003.Spec.clj")

(ns pe.clojure.implementation.problem0003.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0003.clj")
(use 'pe.clojure.implementation.problem0003)
(use 'clojure.test)

(deftest Problem0003

  (testing "largestPrimeFactor"
    (is (= 29    (largestPrimeFactor 13195)))
    (is (= 271   (largestPrimeFactor 99999)))
    (is (= 28051 (largestPrimeFactor 123564655)))
    (is (= 28051 (largestPrimeFactor 15268223965269025))))

  (testing "primeFactors"
    (is (set? (primeFactors 7)))
    (is (every? (primeFactors 7) [7]))
    (is (every? (primeFactors 10) [2 5]))
    (is (every? (primeFactors 3) [3]))))

(run-tests)

