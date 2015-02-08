;https://github.com/PeterLuschny/Fast-Factorial-Functions/blob/6870e3c280793e05b89484d33456bdaa723b8d26/SilverFactorial64/Sharith/Factorial/FactorialSwing.cs

(ns algorithms.nonvisualstudio.clojure.factorial.swing)

(defn product [m len]
  (let [hlen  (bit-shift-right len 1)]
    (cond
      (= len 1) m
      (= len 2) (*' m (-' m 2))
      :else
        (*'
          (product (-' m (*' 2 hlen)) (-' len hlen))
          (product m hlen)))))

(def smallOddSwing
  [ 1 1 1 3 3 15 5 35 35 315 63 693 231 3003 429 6435 6435 109395
    12155 230945 46189 969969 88179 2028117 676039 16900975 1300075
    35102025 5014575 145422675 9694845 300540195 300540195])

(defn lenCompute [n]
  (let [len (int (/ (-' n 1) 4))]
    (if
      (not= 2 (mod n 4)) (+' len 1)
      len)))

(defn oddSwing [n oddFactNDiv4]
  (let [len  (lenCompute n)
        high (-' n (bit-and 1 (+' n 1)))]
    (if
      (< n (count smallOddSwing))(nth smallOddSwing n)
      (bigint
        (/
          (product high len)
          oddFactNDiv4)))))

(def smallOddFact
  [ 1 1 1 3 3 15 45 315 315 2835 14175 155925 467775 6081075
    42567525 638512875 638512875])

(defn oddFactorial [n]
  638512875)
