;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/library-fine.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.library-fine.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/library-fine.clj")
(use 'hr.clojure.algorithms.warmup.implementation.library-fine)
(use 'clojure.test)

(def today [20 2 2015])

(def oneYearAgo [20 2 2014])
(def oneMonthAgo [20 1 2015])
(def oneDayAgo [19 2 2015])

(def twoDaysInTheFuture [22 2 2015])
(def threeMonthsInTheFuture [20 5 2015])
(def fifteenYearsInTheFuture [20 2 2030])

(deftest library-fine

  (testing "is-overdue"
    (is (= false (is-overdue today today)))
    (is (= true (is-overdue today twoDaysInTheFuture)))
    )
)

(run-tests)
