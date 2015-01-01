;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0028.Spec.clj")

(ns pe.clojure.implementation.problem0028.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0028.clj")
(use 'pe.clojure.implementation.problem0028)
(use 'clojure.test)

(deftest Problem0028

  (testing "sumOfBoxLevel"
    (is (= 76 (sumOfBoxLevel 5)))
    (is (= 24 (sumOfBoxLevel 3))))
  (testing "sumOfSpiralDiagonals"
    (is (= 1 (sumOfSpiralDiagonals 1)))
    (is (= 101 (sumOfSpiralDiagonals 5)))
    (is (= 25 (sumOfSpiralDiagonals 3)))
    (is (= 669171001 (sumOfSpiralDiagonals 1001)))))

(run-tests)

