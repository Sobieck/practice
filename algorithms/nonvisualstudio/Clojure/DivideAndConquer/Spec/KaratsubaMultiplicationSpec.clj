;In PowerShell
;C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\packages\Clojure.1.6.0.1\lib\net40\Clojure.Main.exe
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/algorithms/nonvisualstudio/Clojure/DivideAndConquer/Spec/KaratsubaMultiplicationSpec.clj")


(ns algorithms.clojure.divideAndConquer.karatsubaMultiplication.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/algorithms/nonvisualstudio/Clojure/DivideAndConquer/Implementation/KaratsubaMultiplication.clj")
(use 'algorithms.clojure.divideAndConquer.karatsubaMultiplication)
(use 'clojure.test)


(deftest Katatsuba_roundDown
  (testing "roundDown"
    (is (= 12 (roundDown 12.4)))
    (is (= 123495199123 (roundDown 123495199123.2165)))
    (is (= 1 (roundDown 1.2)))))

(deftest Katatsuba_whereToDivideNumber
  (testing "whereToDivideNumber"
    (is (= 10 (whereToDivideNumber 10)))
    (is (= 100 (whereToDivideNumber 5678)))
    (is (= 1000 (whereToDivideNumber 567898)))
    (is (= 10 (whereToDivideNumber 100)))
    (is (= 100 (whereToDivideNumber 78925)))))

(deftest Katatsuba_splitNumber
  (testing "splitNumber"
    (is (= [12 0] (splitNumber 120 10)))
    (is (= [10 0] (splitNumber 1000 100)))
    (is (= [567 898] (splitNumber 567898 1000)))))

(deftest Katatsuba_takeFirst
  (testing "takeFirst"
    (is (= 12 (first (splitNumber 120 10))))
    (is (= 898 (second (splitNumber 567898 1000))))))

(deftest Katatsuba_isMaxLessThanTen
  (testing "isMaxLessThanTen"
    (is (= false (isMaxLessThanTen 10 4)))
    (is (= false (isMaxLessThanTen 3 10)))
    (is (= true (isMaxLessThanTen 2 -1)))))

(deftest Katatsuba_multiplyKatatsuba
  (testing "multiplyKatatsuba"
    (is (= 10 (multiplyKatatsuba 2 5)))
    (is (= 12 (multiplyKatatsuba 12 1)))
    (is (= 7006652 (multiplyKatatsuba 5678 1234)))
    (is (= 500 (multiplyKatatsuba 10 50)))
    (is (= 2398052144256972738312111343740159860488704 (multiplyKatatsuba 1548564532135665645648 1548564554135665641248)))))

(run-tests)
