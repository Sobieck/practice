;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/a-very-big-sum.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.a-very-big-sum.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/a-very-big-sum.clj")
(use 'hr.clojure.algorithms.warmup.implementation.a-very-big-sum)
(use 'clojure.test)

(deftest a-very-big-sum
  (testing "sumStrings"
    (is (= 1 (sumStrings "1")))
    (is (= 2 (sumStrings "1 1")))
    (is (= 111111111111111111) (sumStrings "100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1111111111"))
    (is (= 5000000015 (sumStrings "1000000001 1000000002 1000000003 1000000004 1000000005"))))
  (testing "splitAtSpace"
    (is (= ["1"] (splitAtSpace "1")))
    (is (= ["1" "2"] (splitAtSpace "1 2"))))
  (testing "castToBigInt"
    (is (= 15645623213 (castToBigInt "15645623213")))
    (is (= 1564562321315645623213 (castToBigInt "1564562321315645623213")))))


(run-tests)
