(ns hr.clojure.functionalprogramming.rotate-string)

(use '[clojure.string :only (join)])

(defn create-rotations [string]
  (if
    (= 1 (count string))
    string
    (loop [result []
           last-string string]
      (if
        (= (count string) (count result))
        (join " " result)
        (let
          [next-string
            (apply str
              (apply concat
                (reverse
                  (split-at 1 last-string))))]
          (recur
            (conj result next-string)
            next-string))))))
