(use '[clojure.string :only (split)])

(defn is-am
  [am-or-pm]
  (=
    am-or-pm
    "AM"))

(defn split-at-colons
  [string]
  (split
    string
    #":"))

(defn split-string-in-half
  [string]
  (if
    (not= (count string) 0)
    (map
      #(apply str %)
      (split-at
        (/ (count string) 2)
        string))
    [string]))

(defn parse-time
  [time]
  (let
    [splitAtColons (split-at-colons time)]
    (->>
      (map
        #(if
          (<
            2
            (count %))
          (split-string-in-half %)
          %)
        splitAtColons)
      flatten)))

(defn format-hour
  [hour am-or-pm]
  (let
    [hourNumber (read-string hour)
     isAm (is-am am-or-pm)]
    (if
      isAm
      (cond
        (= hourNumber 12) "00"
        :else hour)
      (cond
        (= hourNumber 12) "12"
        :else
          (str
            (+
              hourNumber
              12))))))

(defn convert-to-military-time
  [time]
  (let
    [parsedTime (parse-time time)]
    (apply str
      (->>
        (rest parsedTime)
        (map #(cons ":" %))
        (take 2)
        (cons
          (format-hour
            (first parsedTime)
            (last parsedTime)))
        flatten))))

(let
  [standardTime (read-line)]
  (print (convert-to-military-time standardTime)))
