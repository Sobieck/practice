;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0006.Spec.clj")

(ns pe.clojure.implementation.problem0006.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0006.clj")
(use 'pe.clojure.implementation.problem0006)
(use 'clojure.test)

(deftest Problem0006

  (testing "square"
    (is (= 25 (square 5)))
    (is (= 100 (square 10))))

  (testing "sumOfSquares"
    (is (= 5 (sumOfSquares 2)))
    (is (= 385 (sumOfSquares 10))))

  (testing "squareOfSums"
    (is (= 9 (squareOfSums 2)))
    (is (= 3025 (squareOfSums 10))))

  (testing "differenceBetweenSquareOfSumsAndSumOfSquares"
    (is (= 4 (differenceBetweenSquareOfSumsAndSumOfSquares 2)))
    (is (= 2640 (differenceBetweenSquareOfSumsAndSumOfSquares 10)))
    (is (= 25164150 (differenceBetweenSquareOfSumsAndSumOfSquares 100)))))


(run-tests)

