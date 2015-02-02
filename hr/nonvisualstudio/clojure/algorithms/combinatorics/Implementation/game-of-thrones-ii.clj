;http://stackoverflow.com/questions/13789092/length-of-the-first-line-in-an-utf-8-file-with-bom

(ns hr.clojure.algorithms.warmup.implementation.game-of-thrones-ii)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Math.clj")
(use '[utilities.math :as util.math])
(use '[utilities.sequences :as util.seq])

(defn halfOfFrequencies [string]
  (->>
    (frequencies string)
    (map
      #(bit-shift-right (second %) 1))
    (filter
      #(not (zero? %)))))

(defn productOfFactorials [vector]
  (->>
    (map
      #(util.math/factorial %) vector)
    (util.seq/product)))

(defn numberOfPalendromialPermutations [string]
  (let [halfFreq (halfOfFrequencies string)
        factOfSum (util.math/factorial (util.seq/sum halfFreq))]
    (/
      factOfSum
      (productOfFactorials halfFreq))))

;IO FOR WEBSITE
;(println (numberOfPalendromialPermutations (read-line)))
