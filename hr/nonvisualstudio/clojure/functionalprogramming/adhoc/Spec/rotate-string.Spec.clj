;(load-file "C:/GitHub/practice/hr/nonvisualstudio/clojure/functionalprogramming/adhoc/Spec/rotate-string.Spec.clj")

(ns hr.clojure.functionalprogramming.rotate-string.spec)

(load-file
  "C:/GitHub/practice/hr/nonvisualstudio/clojure/functionalprogramming/adhoc/Implementation/rotate-string.clj")

(use 'hr.clojure.functionalprogramming.rotate-string)
(use 'clojure.test)

(deftest rotate-string
  (testing "create-rotations"
    (is (= "a" (create-rotations "a")))
    (is (= "ba ab" (create-rotations "ab")))
    (is (= "bca cab abc" (create-rotations "abc")))
    (is (= "aaa aaa aaa" (create-rotations "aaa"))))
    (is (= "bcdea cdeab deabc eabcd abcde" (create-rotations "abcde"))))

(run-tests)
