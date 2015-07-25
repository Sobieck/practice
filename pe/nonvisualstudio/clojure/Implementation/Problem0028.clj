(ns pe.clojure.implementation.problem0028)


(defn sumOfBoxLevel [n]
  (loop [i 0
         result 0]
    (cond
     (= i 4) result
     :else (recur
            (inc i)
            (+ result
             (- (* n n)
                (* (- n 1) i)))))))


(defn sumOfSpiralDiagonals [sizeOfSpiral]
  (loop [i sizeOfSpiral
         sumSoFar 1]
    (if (= i 1)
      sumSoFar
      (recur
       (- i 2)
       (+ sumSoFar
          (sumOfBoxLevel i))))))
