(ns pe.clojure.implementation.problem0008)

(defn importProblemSet [path]
  (apply str
    (->>
      (slurp path)
      (filter (fn [x] (Character/isDigit x))))))

(defn multiplyDigitsOfString [string]
  (reduce *
    (->>
      (seq string)
      (map int)
      (map (fn [elem] (- elem 48))))))

(defn multiplyDigitsOfPotion [howLong string]
  (->>
    (take howLong string)
    (multiplyDigitsOfString)))

(defn maxOfMultiplesOfString [howLong string]
  (loop [currentString string
         result 0]
    (cond
      (= currentString "") 
        result
      (> (multiplyDigitsOfPotion howLong currentString) result)
        (recur (subs currentString 1) (multiplyDigitsOfPotion howLong currentString))
      :else 
        (recur (subs currentString 1) result))))

(defn maxOfMultiplesOfTxtFile [howLong path]
  (maxOfMultiplesOfString
    howLong
    (importProblemSet path)))
