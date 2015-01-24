module Problem0012 where

  import Data.List

  --http://www.mathsisfun.com/algebra/triangular-numbers.html
  nthTriangleNumber nth =
    round
    $(nth * ( nth + 1)) / 2

  infiniteListOfTriangleNumbers = [nthTriangleNumber x | x <- [1..]]

  --http://rosettacode.org/wiki/Factors_of_an_integer#Haskell
  factors n = lows ++ (reverse $ map (div n) lows)
    where lows = filter ((== 0) . mod n) [1..truncate . sqrt $ fromIntegral n]


  firstTriangleNumberWithMoreThanHowManyFactors n =
    head $ filter (\x -> (length $ factors x) > n) infiniteListOfTriangleNumbers
