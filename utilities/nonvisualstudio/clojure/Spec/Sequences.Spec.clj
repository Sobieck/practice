;(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Spec/Sequences.Spec.clj")

(ns utilities.sequences.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use 'utilities.sequences)
(use 'clojure.test)


(deftest SequencesUtilities

  (testing "sum"
    (is (= 10 (sum [10])))
    (is (= 0 (sum [])))
    (is (= 12 (sum [1 9 2]))))

  (testing "firstInts"
    (is (= [1 2] (firstInts 2)))
    (is (= [1 2 3 4 5 6 7 8 9 10] (firstInts 10))))

  (testing "product"
    (is (= 1000 (product [10 10 10]))
    (is (= 600000 (product [6 100 1000]))))))

(run-tests)
