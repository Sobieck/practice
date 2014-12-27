(ns algorithms.clojure.divideAndConquer.karatsubaMultiplication)

(defn whereToDivideNumber [n]
  (int
   (Math/Pow 10
             (int (/
                   (count (str n))
                   2)))))

(defn splitNumber [n]
  (letfn [(high [number]
                (int (/ number
                   (whereToDivideNumber number))))
          (low [number]
               (int (mod number
                    (whereToDivideNumber number))))]
    [(high n) (low n)]))
