(ns hr.clojure.algorithms.warmup.implementation.game-of-thrones-i)

(defn notGreaterThanOne [int]
  (>= 1 int))

(defn canCreatePalindrome [string]
  (let [frequences (frequencies string)]
    (->>
      (filter #(odd? (second %)) frequences)
      count
      notGreaterThanOne)))

(defn translateBoolToEnglish [bool]
  (if (= true bool)
  "YES"
  "NO"))

;IO FOR WEBSITE
;(println
;  (->>
;    (canCreatePalindrome (read-line))
;    translateBoolToEnglish))
