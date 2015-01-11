; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/problem0009.Spec.clj")

(ns pe.clojure.implementation.problem0009.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/problem0009.clj")
(use 'pe.clojure.implementation.problem0009)
(use 'clojure.test)

(deftest problem0009Tests
  (testing "euclidsFormula"
    (is (= [3 4 5] (euclidsFormula 2 1)))
    (is (= [91 60 109] (euclidsFormula 10 3))))

  (testing "findFirstTripleThatSumsTo"
    (is (= [3 4 5] (findFirstTripleThatSumsTo 12)))
    (is (= [105 88 137] (findFirstTripleThatSumsTo 330))))

  (testing "productOfTheFirstTripleThatSumsTo"
    (is (= 60 (productOfTheFirstTripleThatSumsTo 12)))
    (is (= 1265880 (productOfTheFirstTripleThatSumsTo 330)))
    (is (= 31875000 (productOfTheFirstTripleThatSumsTo 1000)))))
    
(run-tests)
