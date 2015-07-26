(ns hr.clojure.algorithms.warmup.implementation.hr-io)
(ns utilities.hr-io)

(use '[clojure.string :only (split triml)])

(defn split-at-space
  [string]
  (split string #"\s+"))

(defn split-at-space-and-parse-number
  [string]
  (map read-string
    (split-at-space string)))

;;just hacked away at... not unit tested :(
(defn create-vector-of-strings-from-io
  [size inputVector]
  (loop
    [remaining size
     currentVector inputVector]
    (if (= remaining 0)
      currentVector
      (recur
        (- remaining 1)
        (conj currentVector [(read-line)])))))


;IO for when there is an arbitrary number of lines.
;(let [sizeOfArray (read-string (read-line))
;      inputArray (create-vector-of-strings-from-io sizeOfArray [])]
;      (print inputArray))
