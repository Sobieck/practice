;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0005.Spec.clj")

(ns pe.clojure.implementation.problem0005.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0005.clj")
(use 'pe.clojure.implementation.problem0005)
(use 'clojure.test)

(deftest Problem0005

  (testing "lcmOfList"
    (is (= 2520 (lcmOfList 10)))
    (is (= 27720 (lcmOfList 11)))
    (is (= 232792560 (lcmOfList 20)))))


(run-tests)

