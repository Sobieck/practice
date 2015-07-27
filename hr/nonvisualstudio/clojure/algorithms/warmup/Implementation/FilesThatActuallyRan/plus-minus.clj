;;IO Stuff

(use '[clojure.string :only (split triml)])

(defn split-at-space
  [string]
  (split string #" "))

(defn split-at-space-and-parse-number
  [string]
  (map read-string
    (split-at-space string)))

;;ALGO

(defn conditional-count
  [function list]
  (->>
    (filter function list)
    count))

(defn format-fraction
  [numerator denominator]
  (->>
    (/ numerator denominator)
    double
    (format "%.6f")))

;;IO Stuff
(let [a (read-string (read-line))
      b (split-at-space-and-parse-number (read-line))]
          (println
             (format-fraction
              (conditional-count #(> % 0) b)
              a))
          (println
            (format-fraction
              (conditional-count #(< % 0) b)
              a))
          (println
            (format-fraction
              (conditional-count #(= % 0) b)
              a)))
