(ns pe.clojure.implementation.problem0006)

(load-file "C:/Users/Thomas/Documents/GitHub/practice/utilities/nonvisualstudio/clojure/Implementation/Sequences.clj")
(use '[utilities.sequences :as util.seq])

(defn square [x]
  (* x x))

(defn sumOfSquares [xInts]
  (->>
   (util.seq/firstInts xInts)
   (map square)
   util.seq/sum))

(defn squareOfSums [xInts]
  (->>
   (util.seq/firstInts xInts)
   util.seq/sum
   square))

(defn differenceBetweenSquareOfSumsAndSumOfSquares [xInts]
  (-
   (squareOfSums xInts)
   (sumOfSquares xInts)))
