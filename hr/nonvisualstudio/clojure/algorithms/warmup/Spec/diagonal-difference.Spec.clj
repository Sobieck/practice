;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/diagonal-difference.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.diagonal-difference.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/diagonal-difference.clj")
(use 'hr.clojure.algorithms.warmup.implementation.diagonal-difference)
(use 'clojure.test)

(deftest diagonal-difference

  (testing "sum-diagonal"
   (is (= 15 (sum-diagonal [[1 2 3][4 5 6][7 8 9]])))
   (is (= 100 (sum-diagonal [[100 2 3]])))
   (is (= 5 (sum-diagonal [[1][2 4]]))))

  (testing "get-diagonal-numbers"
   (is (= [1] (get-diagonal-numbers [[1]]))))
   (is (= [1 2] (get-diagonal-numbers [[1 3][4 2]])))
   (is (= [1 2 3] (get-diagonal-numbers [[1 5 9] [8 2 3] [9 7 3]])))

  (testing "abs-difference-of-diagonal-numbers"
    (is (= 0 (abs-difference-of-diagonal-numbers [[1]])))
    (is (= 10 (abs-difference-of-diagonal-numbers [[1 3][2 14]])))
    (is (= 15 (abs-difference-of-diagonal-numbers [[11 2 4][4 5 6][10 8 -12]])))))


(run-tests)
