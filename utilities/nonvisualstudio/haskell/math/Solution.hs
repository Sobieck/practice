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

  factorial 0 = 1
  factorial n = factRecur n 1
    where factRecur currentN currentProduct | currentN == 1 = currentProduct
                                            | otherwise = factRecur (currentN - 1) (currentProduct * currentN)

  roundFloat float decimals = (fromInteger $ round $ float * (10^decimals)) / (10.0^^decimals)
