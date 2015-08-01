;(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Spec/time-conversion.Spec.clj")

(ns hr.clojure.algorithms.warmup.implementation.time-conversion.spec)

(load-file "c:/GitHub/practice/hr/nonvisualstudio/clojure/algorithms/warmup/Implementation/time-conversion.clj")
(use 'hr.clojure.algorithms.warmup.implementation.time-conversion)
(use 'clojure.test)

(deftest time-conversion

  (testing "is-am-pm-multiplier"
    (is (= true (is-am "AM")))
    (is (= false (is-am "PM"))))
  (testing "split-at-colons"
    (is (= ["1"] (split-at-colons "1")))
    (is (= ["1" "2" "3"] (split-at-colons "1:2:3")))
    (is (= ["07" "05" "45PM"] (split-at-colons "07:05:45PM"))))
  (testing "split-string-in-half"
    (is (= [""] (split-string-in-half "")))
    (is (= ["1" "1"] (split-string-in-half "11")))
    (is (= ["465" "854"] (split-string-in-half "465854")))
    (is (= ["4658" "543"] (split-string-in-half "4658543"))))
  (testing "parse-time"
    (is (= ["07" "05" "45" "PM"] (parse-time "07:05:45PM"))))
  (testing "format-hour"
    (is (= "01" (format-hour "01" "AM")))
    (is (= "00" (format-hour "12" "AM")))
    (is (= "13" (format-hour "01" "PM")))
    (is (= "23" (format-hour "11" "PM")))
    (is (= "12" (format-hour "12" "PM"))))
  (testing "convert-to-military-time"
    (is (= "00:00:00" (convert-to-military-time "12:00:00AM")))
    (is (= "00:02:54" (convert-to-military-time "12:02:54AM")))
    (is (= "01:45:12" (convert-to-military-time "01:45:12AM")))
    (is (= "12:00:00" (convert-to-military-time "12:00:00PM")))
    (is (= "13:02:56" (convert-to-military-time "01:02:56PM")))))

(run-tests)
