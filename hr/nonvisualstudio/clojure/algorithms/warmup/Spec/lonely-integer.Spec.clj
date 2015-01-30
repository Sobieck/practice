; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/lonely-integer.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.lonely-integer.spec)

(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/lonely-integer.clj")
(use 'hr.clojure.algorithms.warmup.implementation.lonely-integer)
(use 'clojure.test)


(deftest lonely-integer
  (testing "findLonelyInteger"
    (is (= 2 (findLonelyInteger [1 2 1 88 19 19 88 1000 1000])))
    (is (= 1001 (findLonelyInteger [1 2 3 4 5 6 7 8 9 9 8 7 1001 6 5 4 3 2 1 0 0 18 888 18 888]))))
  (testing "parseIntArray"
    (is (= [1] (parseIntArray "1")))
    (is (= [0 0 1 2 1] (parseIntArray "0 0 1 2 1")))
    (is (= [1000 10 1 2] (parseIntArray "1000 10 1 2"))))
  (testing "findLonelyIntegerOfString"
    (is (= 2 (findLonelyIntegerOfString "1 2 1"))
    (is (= 1001 (findLonelyIntegerOfString "1 2 3 4 5 6 7 8 9 9 8 7 1001 6 5 4 3 2 1 0 0 18 888 18 888"))))))
(run-tests)
