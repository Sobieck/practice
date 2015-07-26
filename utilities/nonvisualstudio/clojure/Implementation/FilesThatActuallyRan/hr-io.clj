(use '[clojure.string :only (split triml)])

;;library functions

(defn abs
  [n]
  (if
    (>= n 0)
    n
    (* -1 n)))

(defn sum
  [seqToSum]
  (reduce + seqToSum))

;;io algo

(defn get-diagonal-numbers
  [vectorOfVectors]
  (loop
    [result []
     input vectorOfVectors]
     (if
       (= [] input)
       result
       (recur
         (conj
           result
           (first
             (first input)))
         (rest
           (map rest input))))))

(defn sum-diagonal
  [vectorOfVectors]
  (->>
    (get-diagonal-numbers vectorOfVectors)
    sum))

(defn abs-difference-of-diagonal-numbers
  [vectorOfVectors]
  (abs
    (-
      (sum-diagonal vectorOfVectors)
      (sum-diagonal
        (reverse vectorOfVectors)))))


;;io
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

;;just hacked away at... not unit tested :(
(defn create-vector-of-numbers-from-io
  [size inputVector]
  (loop
    [remaining size
     currentVector inputVector]
    (if (= remaining 0)
      (parse-vector-of-vectors currentVector)
      (recur
        (- remaining 1)
        (conj currentVector [(read-line)])))))


;IO for when there is an arbitrary number of lines.
(let [sizeOfArray (read-string (read-line))
      inputArray (create-vector-of-numbers-from-io sizeOfArray [])]
      (print (abs-difference-of-diagonal-numbers inputArray)))
