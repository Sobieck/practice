(ns hr.clojure.algorithms.warmup.implementation.staircase)

(defn make-row
  [blanks hashes]
   (apply str
     (map
      #(apply str %)
      [(take
          blanks
          (repeat " "))
      (take
        hashes
        (repeat "#"))])))

(defn create-staircase
  [numberOfSteps]
  (loop
    [result []
     currentRow 0]
     (if
       (= currentRow numberOfSteps)
       result
       (recur
         (cons
           (make-row
             currentRow
             (- numberOfSteps currentRow))
           result)
         (inc currentRow)))))

;;Hr IO

(let [sizeOfStaircase (read-string (read-line))
      dataToPrint (create-staircase sizeOfStaircase)]
      (doall
        (map
          #(println %)
          dataToPrint)))
