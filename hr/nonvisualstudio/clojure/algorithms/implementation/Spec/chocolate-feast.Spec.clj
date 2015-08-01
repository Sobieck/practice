;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/implementation/Spec/chocolate-feast.Spec.clj")

(ns hr.clojure.algorithms.implementation.implementation.chocolate-feast.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/implementation/Implementation/chocolate-feast.clj")
(use 'hr.clojure.algorithms.implementation.implementation.chocolate-feast)
(use 'clojure.test)

(deftest chocolate-feast
  (testing "number-to-purchase"
    (is (= 0 (number-to-purchase 2 10)))
    (is (= 2 (number-to-purchase 10 4)))
    (is (= 666 (number-to-purchase 1000 1.5)))
    (is (= 5291 (number-to-purchase 10000 1.89)))

    )

    )

(run-tests)
