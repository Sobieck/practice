;(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Spec/Math.Spec.clj")

(ns utilities.math.spec)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use 'utilities.math)
(use 'clojure.test)


(deftest MathUtilities

  (testing "gcd"
    (is (= 30 (gcd 990 210)))
    (is (= 8 (gcd 952 624))))

  (testing "lcm"
    (is (= 650 (lcm 65 50)))
    (is (= 20 (lcm 10 4)))))

(run-tests)
