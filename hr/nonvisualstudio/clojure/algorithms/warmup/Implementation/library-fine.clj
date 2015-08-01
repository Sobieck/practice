(ns hr.clojure.algorithms.warmup.implementation.library-fine)

;;for io
(use '[clojure.string :only (split triml)])
;;

(defn date-differences
  [dueDate dateReturned]
  (->>
    (map vector dueDate dateReturned)
    reverse
    (map
      #(reduce - %))
    (map
      #(* -1 %))))

(defn how-overdue
  [dueDate dateReturned]
  (loop
    [result []
     input (date-differences dueDate dateReturned)]
     (if
       (empty? input)
       result
       (if
         (< 0 (first input))
         (recur
           (assoc
             [0 0 0]
             (-
               3
               (count input))
             (first input))
           [])
         (recur
           (cons 0 result)
           (rest input))))))

(defn fine-amount
  [dueDate dateReturned]
  (let
    [howOverdue (how-overdue dueDate dateReturned)]
      (cond
        (> (first howOverdue) 0) 10000
        (> (second howOverdue) 0) (* (second howOverdue) 500)
        (> (last howOverdue) 0) (* (last howOverdue) 15)
        :else 0)))

;; HR IO
;(defn split-at-space
;  [string]
;  (split string #" "))
;
;(defn split-at-space-and-parse-number
;  [string]
;  (map read-string
;    (split-at-space string)))
;
;(let [dateReturned (split-at-space-and-parse-number (read-line))
;      dueDate (split-at-space-and-parse-number (read-line))]
;      (print (fine-amount dueDate dateReturned)))
