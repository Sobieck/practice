;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/library-fine.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.library-fine.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/library-fine.clj")
(use 'hr.clojure.algorithms.warmup.implementation.library-fine)
(use 'clojure.test)

(def today [20 2 2015])

(def oneYearAgo [19 1 2014])
(def oneMonthAgo [19 1 2015])
(def oneDayAgo [19 2 2015])

(def threeDaysInTheFuture [23 2 2015])
(def twoDaysInTheFuture [22 2 2015])
(def threeMonthsInTheFuture [19 5 2015])
(def fourMonthsInTheFuture [19 6 2015])
(def fifteenYearsInTheFuture [19 1 2030])

(deftest library-fine
  (testing "date-differences"
    (is (= [15 -1 -1] (date-differences today fifteenYearsInTheFuture)))
    (is (= [0 0 0] (date-differences today today)))
    (is (= [-1 -1 -1] (date-differences today oneYearAgo)))
    (is (= [0 3 -1] (date-differences today threeMonthsInTheFuture)))
    (is (= [0 0 2] (date-differences today twoDaysInTheFuture))))
  (testing "how-overdue"
    (is (= [0 0 0] (how-overdue today today)))
    (is (= [0 0 0] (how-overdue today oneYearAgo)))
    (is (= [0 0 0] (how-overdue today oneMonthAgo)))
    (is (= [0 0 0] (how-overdue today oneDayAgo)))
    (is (= [0 0 2] (how-overdue today twoDaysInTheFuture)))
    (is (= [0 0 3] (how-overdue today threeDaysInTheFuture)))
    (is (= [0 3 0] (how-overdue today threeMonthsInTheFuture)))
    (is (= [15 0 0] (how-overdue today fifteenYearsInTheFuture))))
  (testing "fine-amount"
    (is (= 30 (fine-amount today twoDaysInTheFuture)))
    (is (= 45 (fine-amount today threeDaysInTheFuture)))
    (is (= 10000 (fine-amount today fifteenYearsInTheFuture)))
    (is (= 1500 (fine-amount today threeMonthsInTheFuture)))
    (is (= 2000 (fine-amount today fourMonthsInTheFuture)))
    (is (= 0 (fine-amount today today)))
    (is (= 0 (fine-amount today oneDayAgo)))
    (is (= 0 (fine-amount today oneYearAgo)))
    (is (= 0 (fine-amount today oneMonthAgo)))))

(run-tests)
