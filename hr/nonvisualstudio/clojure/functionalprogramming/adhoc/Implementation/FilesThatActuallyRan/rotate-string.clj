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


(defn create-vector-from-io
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
(let [sizeOfArray (read-string (read-line))
      inputArray (create-vector-from-io sizeOfArray [])]
      (loop
        [inputs inputArray]
          (println
            (create-rotations (apply str (first inputs))))
          (cond
            (not= inputs [])
            (recur
              (rest inputs)))))
