; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/problem0010.Spec.clj")

(ns pe.clojure.implementation.problem0010.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/problem0010.clj")
(use 'pe.clojure.implementation.problem0010)
(use 'clojure.test)

(deftest problem0010Tests
  (testing "sumOfPrimesBelow"
    (is (= 17 (sumOfPrimesBelow 10)))
    (is (= 58 (sumOfPrimesBelow 19)))
    (is (= 142913828922 (sumOfPrimesBelow 2000000)))))

(run-tests)
