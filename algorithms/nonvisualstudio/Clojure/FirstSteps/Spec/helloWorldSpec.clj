;In PowerShell
;cd C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\packages\Clojure.1.6.0.1\lib\net40
;Clojure.Main.exe
;(load-file "C:/Users/Thomas/Documents/GitHub/algorithms.practice/algorithms.practice/algorithms.nonvisualstudio/Clojure/FirstSteps/Spec/helloWorldSpec.clj")
;(in-ns 'algorithms.clojure.helloWorld.spec)


(ns algorithms.clojure.helloWorld.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/algorithms.practice/algorithms.practice/algorithms.nonvisualstudio/Clojure/FirstSteps/helloWorld.clj")
(use 'algorithms.clojure.helloWorld)
(use 'clojure.test)

(testing "Arithmetic"

  (testing "with positive integers"
    (is (= 4 (+ 2 2)))
    (is (= 7 (+ 3 4))))

  (testing "with negative integers"
    (is (= -4 (+ -2 -2)))
    (is (= -1 (+ 3 -4)))))


(testing "HelloWorld"

  (testing "add"
    (is (= 4 (add 2 2)))
    (is (= 5 (add 2 3))))

  (testing "helloWorld"
    (is (= "Hello Thomas!" (helloWorld "Thomas")))
    (is (= "Hello Lisa!" (helloWorld "Lisa")))))




