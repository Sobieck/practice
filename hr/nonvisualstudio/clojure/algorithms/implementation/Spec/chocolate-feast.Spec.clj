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
    (is (= 3 (number-to-purchase 6 2)))
    (is (= 5291 (number-to-purchase 10000 1.89))))
  (testing "number-of-freebies"
    (is (= [0 1] (number-of-freebies 1 2)))
    (is (= [100 0] (number-of-freebies 100 1)))
    (is (= [2 0] (number-of-freebies 3 1.5)))
    (is (= [1 1] (number-of-freebies 3 2))))
  (testing "total-chocolates-consumed"
    (is (= 6 (total-chocolates-consumed 10 2 5)))
    (is (= 3 (total-chocolates-consumed 12 4 4)))
    (is (= 5 (total-chocolates-consumed 6 2 2)))
    (is (= 899 (total-chocolates-consumed 43203 60 5)))

    ))



(run-tests)
