;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0002.Spec.clj")

(ns pe.clojure.implementation.problem0002.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0002.clj")
(use 'pe.clojure.implementation.problem0002)
(use 'clojure.test)

(deftest Problem0002

  (testing "generateFibonacciNumbersLessThan"
    (is (= '(1 2 3 5 8 13 21 34 55 89) (generateFibonacciNumbersLessThan 90)))
    (is (= '(1 2 3 5 8 13 21) (generateFibonacciNumbersLessThan 34)))
    (is (= [1 2 3] (generateFibonacciNumbersLessThan 5))))

  (testing "filterEvens"
    (is (= '(2 4 10 12) (filterEvens [1 2 4 5 9 10 11 12 13 15 19 201])))
    (is (= '()(filterEvens [1 3 5 7 9 11]))))

  (testing "sumOfEvenFibonaccisLessThan"
    (is (= 44 (sumOfEvenFibonaccisLessThan 100)))
    (is (= 10 (sumOfEvenFibonaccisLessThan 10)))))

(run-tests)

