; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0029.Spec.clj")

(ns pe.clojure.implementation.problem0029.spec)

(load-file "C:/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0029.clj")
(use 'pe.clojure.implementation.problem0029)
(use 'clojure.test)


(deftest Problem0029
  (testing "exponentiateNumberFromTwoToX"
    (is (= #{4 8 16 32} (exponentiateNumberFromTwoToX 2 5)))
    (is (= #{9 27 81 243} (exponentiateNumberFromTwoToX 3 5)))
    (is (= #{25 125 625 3125} (exponentiateNumberFromTwoToX 5 5))))
  (testing "distinctPowersBetween2And"
    (is (= 15 (distinctPowersBetween2And 5)))
    (is (= 8 (distinctPowersBetween2And 4)))
    (is (= 9183 (distinctPowersBetween2And 100)))
    ))


(run-tests)
