; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/combinatorics/Spec/game-of-thrones-ii.Spec.clj")
;answer for game-of-thrones-ii.txt is 565288459

(ns hr.clojure.algorithms.warmup.implementation.game-of-thrones-ii.spec)

(load-file "c:/Users/Thomas/Documents/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/combinatorics/Implementation/game-of-thrones-ii.clj")
(use 'hr.clojure.algorithms.warmup.implementation.game-of-thrones-ii)
(use 'clojure.test)


(deftest game-of-thrones-ii
  (testing "numberOfPalendromialPermutations"
    (is (= 3 (numberOfPalendromialPermutations "aaabbbb")))
    (is (= 90 (numberOfPalendromialPermutations "cdcdcdcdeeeef")))
    )
  (testing "halfOfFrequencies"
    (is (= [1 2] (halfOfFrequencies "aaabbbb")))
    (is (= [2 2 2] (halfOfFrequencies "cdcdcdcdeeeef")))
    (is (= [1 3 2] (halfOfFrequencies "cdddcdededeef")))
    )
  (testing "productOfFactorials"
    (is (= 4 (productOfFactorials [1 2 2 1])))
    (is (= 8 (productOfFactorials [2 2 2])))
    (is (= 7257600 (productOfFactorials [10 2])))
    )
    )
(run-tests)
