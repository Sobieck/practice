(ns hr.clojure.algorithms.warmup.implementation.hr-io)
(ns utilities.hr-io)

(use '[clojure.string :only (split triml)])

(defn split-at-space
  [string]
  (split string #" "))

(defn split-at-space-and-parse-number
  [string]
  (map read-string
    (split-at-space string)))

(defn parse-vector-of-vectors
  [vectorOfVectors]
  (loop
    [input vectorOfVectors
     result []]
     (if
       (empty? input)
       result
       (recur
         (rest input)
         (conj
           result
           (split-at-space-and-parse-number
             (first
               (first input))))))))

;;;just hacked away at... not unit tested :(
;(defn create-vector-of-numbers-from-io
;  [size inputVector]
;  (loop
;    [remaining size
;     currentVector inputVector]
;    (if (= remaining 0)
;      (parse-vector-of-vectors currentVector)
;      (recur
;        (- remaining 1)
;        (conj currentVector [(read-line)])))))
;

;IO for when there is an arbitrary number of lines.
;(let [sizeOfArray (read-string (read-line))
;      inputArray (create-vector-of-numbers-from-io sizeOfArray [])]
;      (print inputArray))

;;IO for when there is only one line of input
;(let [a (read-line)
;      b (read-line)]
;          (print (str (sumStrings b))))
