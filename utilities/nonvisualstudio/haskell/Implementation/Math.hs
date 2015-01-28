-- to use - in ghci call use the following path
-- c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Math.hs
-- import Math

module Math where

  import Data.Bits

  powMod :: Integer -> Integer -> Integer -> Integer
  powMod base theExponent modulus = powModRecur (base `mod` modulus) theExponent 1
    where
      powModRecur _ 0 result = result
      powModRecur currentBase currentExp currentResult = powModRecur nextBase nextExp nextResult
        where
          nextResult | currentExp `mod` 2 == 1 = (currentResult * currentBase) `mod` modulus
                     | otherwise               = currentResult
          nextExp   = shiftR currentExp 1
          nextBase  = (currentBase * currentBase) `mod` modulus
