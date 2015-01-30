; input
;2
;2 3
;3 7
;
; output
;5
;10

(use '[clojure.string :only (split triml)])
(def n (Integer/parseInt (read-line)))

(loop [i 0]
  (when (< i n)
    (def a (read-line))
    (def new (split a #"\s+"))
    (println ( + (Integer/parseInt (get new 0)) (Integer/parseInt (get new 1)) ))
    (recur (inc i))))
