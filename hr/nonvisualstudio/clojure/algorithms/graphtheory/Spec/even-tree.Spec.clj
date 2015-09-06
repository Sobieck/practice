;(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/graphtheory/Spec/even-tree.Spec.clj")


(ns hr.clojure.algorithms.graphtheory.even-tree.spec)

(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/graphtheory/Implementation/even-tree.clj")
(use 'hr.clojure.algorithms.graphtheory.even-tree)
(use 'clojure.test)


(deftest even-tree
  (testing "numberOfPalendromialPermutations"
    (is (= 3 (numberOfPalendromialPermutations "aaabbbb")))
    (is (= 90 (numberOfPalendromialPermutations "cdcdcdcdeeeef")))
    )
    )
