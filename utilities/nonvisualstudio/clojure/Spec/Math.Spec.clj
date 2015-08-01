;(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Spec/Math.Spec.clj")

(ns utilities.math.spec)

(load-file "C:/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use 'utilities.math)
(use 'clojure.test)


(deftest MathUtilities

  (testing "gcd"
    (is (= 30 (gcd 990 210)))
    (is (= 8 (gcd 952 624))))

  (testing "lcm"
    (is (= 650 (lcm 65 50)))
    (is (= 20 (lcm 10 4))))

  (testing "bigIntPow"
    (is (= 100000000000000000000N (bigIntPow 100 10)))
    (is (= 3125 (bigIntPow 5 5)))
    (is (= 4 (bigIntPow 2 2)))
    (is (= 16 (bigIntPow 4 2))))

  (testing "factorial"
    (is (= 1 (factorial 0)))
    (is (= 2 (factorial 2)))
    (is (= 3628800 (factorial 10)))
    (is (= 1307674368000 (factorial 15)))
    (is (= 2432902008176640000 (factorial 20))))

  (testing "abs"
    (is (= 1 (abs 1))
    (is (= 100 (abs -100)))))

  (testing "int-division"
    (is (= 0 (int-division 7 12)))
    (is (= 2 (int-division 12 6)))
    (is (= 2 (int-division 12 5)))))
    
(run-tests)
