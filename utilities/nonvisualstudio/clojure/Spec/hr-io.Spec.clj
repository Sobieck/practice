;(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Spec/hr-io.Spec.clj")

(ns utilities.hr-io.spec)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/hr-io.clj")
(use 'utilities.hr-io)
(use 'clojure.test)

(deftest hr-io

  (testing "split-at-space"
    (is (= ["1"] (split-at-space "1")))
    (is (= ["1" "2"] (split-at-space "1 2"))))

  (testing "split-at-space-and-parse-number"
    (is (= [1] (split-at-space-and-parse-number "1"))))
    (is (= [1 2] (split-at-space-and-parse-number "1 2")))
    (is (= [1 2 -3051958198989898] (split-at-space-and-parse-number "1 2 -3051958198989898")))

  ;(testing "flatten-internal-lists"
  ;  (is (= [[11 2 4]] (flatten-internal-lists [[(11 2 4)]])))
  ;
  ;  )
  )

(run-tests)
