;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/staircase.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.staircase.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/staircase.clj")
(use 'hr.clojure.algorithms.warmup.implementation.staircase)
(use 'clojure.test)

(deftest staircase

  (testing "make-row"
   (is (= "" (make-row 0 0)))
   (is (= "  " (make-row 2 0)))
   (is (= "####" (make-row 0 4)))
   (is (= "   #####" (make-row 3 5))))
  (testing "create-staircase"
   (is (= [] (create-staircase 0)))
   (is (= ["#"] (create-staircase 1)))
   (is (= [" #" "##"] (create-staircase 2)))
   (is (= ["  #" " ##" "###"] (create-staircase 3)))))


(run-tests)
