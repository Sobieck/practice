; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/problem0007.Spec.clj")

(ns pe.clojure.implementation.problem0007.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/problem0007.clj")
(use 'pe.clojure.implementation.problem0007)
(use 'clojure.test)

(deftest problem0007
  (testing "nthPrime"
    (is (= 2 (nthPrime 1)))
    (is (= 3 (nthPrime 2)))
    (is (= 104743 (nthPrime 10001)))))

(run-tests)
