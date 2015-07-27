;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/plus-minus.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.plus-minus.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/plus-minus.clj")
(use 'hr.clojure.algorithms.warmup.implementation.plus-minus)
(use 'clojure.test)

(deftest plus-minus

  (testing "conditional-count"
   (is (= 2 (conditional-count #(> % 0) [1 2 0 -2])))
   (is (= 2 (conditional-count #(= % 0) [0 0 1 2 -4])))
   (is (= 5 (conditional-count #(< % 0) [-5 1 0 5 -4 -3 -2 -1]))))

  (testing "format-fraction"
   (is (= "0.500000" (format-fraction 3 6)))
   (is (= "0.333333" (format-fraction 2 6)))
   (is (= "0.166667" (format-fraction 1 6)))))

(run-tests)
