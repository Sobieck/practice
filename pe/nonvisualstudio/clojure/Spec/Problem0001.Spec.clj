;In PowerShell - for CLR
;C:\Users\Thomas\Documents\GitHub\algorithms.practice\algorithms.practice\packages\Clojure.1.6.0.1\lib\net40\Clojure.Main.exe
;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0001.Spec.clj")
;(time ) give elapsed time

(ns pe.clojure.implementation.problem0001.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0001.clj")
(use 'pe.clojure.implementation.problem0001)
(use 'clojure.test)

(deftest Problem0001

  (testing "isMultiple"
    (is (isMultiple 10 5))
    (is (false? (isMultiple 10 3))))

  (testing "isMultipleOf3Or5"
    (is (isMultipleOf3Or5 100))
    (is (isMultipleOf3Or5 9))
    (is (false? (isMultipleOf3Or5 101)))
    (is (false? (isMultipleOf3Or5 8))))

  (testing "generateList"
    (is (= [1 2 3 4] (generateList 5))))

  (testing "sumOfMultiplesOfFiveAndThree"
    (is (= 23 (sumOfMultiplesOfFiveAndThree 10))))

  (testing "Answer"
    (is (= 233168 (sumOfMultiplesOfFiveAndThree 1000))))


  (testing "returnZeroIfNotMultipleOf3Or5"
    (is (= 30 (returnZeroIfNotMultipleOf3Or5 30)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 1)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 2)))
    (is (= 3 (returnZeroIfNotMultipleOf3Or5 3)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 4)))
    (is (= 5 (returnZeroIfNotMultipleOf3Or5 5)))
    (is (= 6 (returnZeroIfNotMultipleOf3Or5 6)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 7)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 8)))
    (is (= 9 (returnZeroIfNotMultipleOf3Or5 9)))
    (is (= 0 (returnZeroIfNotMultipleOf3Or5 101))))

 (testing "sumOfMultiplesOfFiveAndThreeWithReducer"
    (is (= 23 (sumOfMultiplesOfFiveAndThreeWithReducer 10)))
    (is (= 233168 (sumOfMultiplesOfFiveAndThreeWithReducer 1000))))

 (testing "createVectorFromLazyList"
    (is (vector? (createVectorFromLazyList (range 10))))
    (is (vector? (createVectorFromLazyList (range 1)))))

 (testing "sumOfMultiplesOfFiveAndThreeParallel"
    (is (= 23 (sumOfMultiplesOfFiveAndThreeParallel 10)))
    (is (= 233168 (sumOfMultiplesOfFiveAndThreeParallel 1000)))))

(run-tests)
