; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/solve-me-first.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.solve-me-first.spec)

(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/solve-me-first.clj")
(use 'hr.clojure.algorithms.warmup.implementation.solve-me-first)
(use 'clojure.test)


(deftest solve-me-first
 (testing "solveMeFirst"
   (is (= 2 (solveMeFirst 1 1)))
   (is (= 1001 (solveMeFirst 1 1000)))))


(run-tests)
