(ns utilities.math)

(defn gcd [largerNumber smallerNumber]
  (loop [large largerNumber
         small smallerNumber]
    (let [largeModSmall (mod large small)]
      (if (zero? largeModSmall)
        small
        (recur small largeModSmall)))))

(defn lcm [largerNumber smallerNumber]
  (/ (* largerNumber smallerNumber)
     (gcd largerNumber smallerNumber)))

