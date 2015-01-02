;(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Spec/Problem0004.Spec.clj")

(ns pe.clojure.implementation.problem0004.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/pe/nonvisualstudio/clojure/Implementation/Problem0004.clj")
(use 'pe.clojure.implementation.problem0004)
(use 'clojure.test)

(deftest Problem0004

  (testing "isPalendrom"
    (is (isPalendrom []))
    (is (isPalendrom [1]))
    (is (not (isPalendrom [1 2])))
    (is (isPalendrom [1 1]))
    (is (not (isPalendrom [1 2 1 3 5])))
    (is (isPalendrom [1 2 1 2 1]))
    (is (not (isPalendrom "12345")))
    (is (isPalendrom "12344321")))

  (testing "isNumberAPalendrom"
    (is (isNumberAPalendrom 1234554321))
    (is (not (isNumberAPalendrom 12352321))))

  (testing "multiplyNumberLineAndFilterPalendroms"
    (is (= [1 2 3 4 5 6] (multiplyNumberLineAndFilterPalendroms 1 6)))
    (is (= [4 6 8] (multiplyNumberLineAndFilterPalendroms 2 6)))
    (is (= [1 2 3 4 5 6 7 8 9 11] (multiplyNumberLineAndFilterPalendroms 1 20))))

  (testing "maxPalendromProduceSync"
    (is (= 9 (maxPalendromProduceSync 1 9)))
    (is (= 121 (maxPalendromProduceSync 1 11)))
    (is (= 9009 (maxPalendromProduceSync 10 99)))
    (is (= 906609 (maxPalendromProduceSync 100 999))))

  (testing "maxPalendromProduceParallel"
    (is (= 9 (maxPalendromProduceSync 1 9)))
    (is (= 9009 (maxPalendromProduceSync 10 99)))))


(run-tests)

