; In powershell c:\Users\Thomas\Documents\GitHub\practice\clojureREPLRunner.bat
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/problem0008.Spec.clj")

(ns pe.clojure.implementation.problem0008.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/problem0008.clj")
(use 'pe.clojure.implementation.problem0008)
(use 'clojure.test)

(deftest problem0008Tests

  (testing "importProblemSet"
    (is (= "12345678901234567890" (importProblemSet "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Fake1.txt")))
    (is (= "1234567890" (importProblemSet "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Fake2.txt"))))

  (testing "multiplyDigitsOfString"
    (is (= 1 (multiplyDigitsOfString "11111")))
    (is (= 81 (multiplyDigitsOfString "99")))
    (is (= 362880 (multiplyDigitsOfString "123456789")))
    (is (= 0 (multiplyDigitsOfString "1234567890"))))

  (testing "multiplyDigitsOfPotion"
    (is (= 9 (multiplyDigitsOfPotion 1 "912349")))
    (is (= 18 (multiplyDigitsOfPotion 3 "9123499"))))

  (testing "maxOfMultiplesOfString"
    (is (= 0 (maxOfMultiplesOfString 123 "")))
    (is (= 9 (maxOfMultiplesOfString 1 "912349")))
    (is (= 81 (maxOfMultiplesOfString 2 "9123499"))))

  (testing "maxOfMultiplesOfTxtFile"
    (is (= 504 (maxOfMultiplesOfTxtFile 3 "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Fake1.txt")))
    (is (= 72 (maxOfMultiplesOfTxtFile 2 "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008Fake1.txt")))
    (is (= 23514624000 (maxOfMultiplesOfTxtFile 13 "C:/Users/Thomas/Documents/GitHub/practice/pe/problemsets/problem0008.txt")))))

(run-tests)
