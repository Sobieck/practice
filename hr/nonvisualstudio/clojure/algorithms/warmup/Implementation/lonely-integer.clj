(ns hr.clojure.algorithms.warmup.implementation.lonely-integer)

;IO FOR WEBSITE
;(def numberOfIntegers (read-line))

(defn findLonelyInteger [vectorOfInts]
  (reduce
    bit-xor
    vectorOfInts))

(defn parseIntArray [string]
  (read-string (str "[" string "]")))

(defn findLonelyIntegerOfString [string]
  (->>
    (parseIntArray string)
    findLonelyInteger))

;IO FOR WEBSITE
;(println
;  (findLonelyIntegerOfString (read-line)))
