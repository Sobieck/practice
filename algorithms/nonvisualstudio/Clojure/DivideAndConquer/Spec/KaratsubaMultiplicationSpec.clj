;In PowerShell
;cd C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\packages\Clojure.1.6.0.1\lib\net40
;Clojure.Main.exe
;(load-file "C:/Users/Thomas/Documents/GitHub/algorithms.practice/algorithms.practice/algorithms.nonvisualstudio/Clojure/DivideAndConquer/Spec/KaratsubaMultiplicationSpec.clj")


(ns algorithms.clojure.divideAndConquer.karatsubaMultiplication.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/algorithms.practice/algorithms.practice/algorithms.nonvisualstudio/Clojure/DivideAndConquer/Implementation/KaratsubaMultiplication.clj")
(use 'algorithms.clojure.divideAndConquer.karatsubaMultiplication)
(use 'clojure.test)


(testing "karatsubaMultiplication"
  (testing "whereToDivideNumber"
    (is (= 10 (whereToDivideNumber 10)))
    (is (= 100 (whereToDivideNumber 5678)))
    (is (= 1000 (whereToDivideNumber 567898)))
    (is (= 10 (whereToDivideNumber 100)))
    (is (= 100 (whereToDivideNumber 78925))))

  (testing "splitNumber"
    (is (= [12 0] (splitNumber 120)))
    (is (= [10 0] (splitNumber 1000)))
    (is (= [567 898] (splitNumber 567898)))))
