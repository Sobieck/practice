(ns pe.clojure.implementation.problem0004)


(defn isPalendrom [listOfItems]
  (loop [newListOfItems listOfItems]
    (if
     (>= 1 (count newListOfItems)) true
     (if (= (last newListOfItems)
            (first newListOfItems))
       (recur (rest (drop-last newListOfItems)))
       false))))

(defn isNumberAPalendrom [n]
  (->> (str n)
       (isPalendrom)))

(defn multiplyNumberLineAndFilterPalendroms [start end]
    (filter
     isNumberAPalendrom
     (map
      (fn [x] (* x start))
      (range start (+ end 1)))))

(defn maxPalendromProduceSync [start end]
   (let [numberLine (range start (+ end 1))]
     (reduce
      max
      (map
       (fn [x]
         (if (empty? (multiplyNumberLineAndFilterPalendroms x end))
           0
           (reduce max (multiplyNumberLineAndFilterPalendroms x end))))
       numberLine))))


(defn maxPalendromProduceParallel [start end]
   (let [numberLine (range start (+ end 1))]
     (reduce
      max
      (pmap
       (fn [x]
         (if (empty? (multiplyNumberLineAndFilterPalendroms x end))
           0
           (reduce max (multiplyNumberLineAndFilterPalendroms x end))))
       numberLine))))


