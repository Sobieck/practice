(ns algorithms.clojure.divideAndConquer.karatsubaMultiplication)

(defn roundDown [n]
  (bigint n))

(defn whereToDivideNumber [n]
  (roundDown
   (Math/Pow 10
             (roundDown (/
                   (count (str n))
                   2)))))

(defn splitNumber [number divideBase]
  (let [high (roundDown (/ number divideBase))
        low  (roundDown (mod number divideBase))]
    [high low]))

(defn isMaxLessThanTen [number1 number2]
  (< (max number1 number2) 10))

(defn multiplyKatatsuba [number1 number2]
  (cond (isMaxLessThanTen number1 number2) (* number1 number2)
  :else (let [dividePoint    (whereToDivideNumber (max number1 number2))
              number1Split   (splitNumber number1 dividePoint)
              number2Split   (splitNumber number2 dividePoint)
              highsRecursion (multiplyKatatsuba (first number1Split) (first number2Split))
              lowsRecursion  (multiplyKatatsuba (second number1Split) (second number2Split))
              midRecursion   (multiplyKatatsuba (+ (first number1Split) (second number1Split))
                                                (+ (first number2Split) (second number2Split)))]

          (+ (* highsRecursion (* dividePoint dividePoint))
             (* (- midRecursion highsRecursion lowsRecursion) dividePoint)
             lowsRecursion))))
