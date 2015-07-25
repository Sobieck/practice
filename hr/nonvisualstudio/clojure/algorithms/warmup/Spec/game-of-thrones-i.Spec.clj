; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/game-of-thrones-i.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.game-of-thrones-i.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/game-of-thrones-i.clj")
(use 'hr.clojure.algorithms.warmup.implementation.game-of-thrones-i)
(use 'clojure.test)


(deftest game-of-thrones-i
  (testing "notGreaterThanOne"
    (is (= true (notGreaterThanOne 1)))
    (is (= true (notGreaterThanOne 0)))
    (is (= false (notGreaterThanOne 2)))
    (is (= false (notGreaterThanOne 100))))
  (testing "canCreatePalindrome"
    (is (= true (canCreatePalindrome "aaabbbb")))
    (is (= true (canCreatePalindrome "aaabbbba")))
    (is (= false (canCreatePalindrome "cdefghmnopqrstuvw"))))
  (testing "translateBoolToEnglish"
    (is (= "YES" (translateBoolToEnglish true)))
    (is (= "NO" (translateBoolToEnglish false)))))
(run-tests)
