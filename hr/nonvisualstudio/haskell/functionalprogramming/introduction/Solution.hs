module Introduction where

  import Math

  repeatNumbers :: Int -> [Int] -> [Int]
  repeatNumbers 0 listOfIntsToRepeat = []
  repeatNumbers howManyTimes listOfIntsToRepeat =
    concat
    $ map (\ numberToRepeat -> take howManyTimes (repeat numberToRepeat)) listOfIntsToRepeat


{- Code that ran- It wasn't taking my facy variable names for some reason.
f :: Int -> [Int] -> [Int]
f 0 arr = []
f n arr =
    concat
    $ map (\ numberToRepeat -> take n (repeat numberToRepeat)) arr

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words


-}

  filterNumbersLessThan :: Int -> [Int] -> [Int]
  filterNumbersLessThan n list = filter (< n) list

{- Code that ran
filterNumbersLessThan :: Int -> [Int] -> [Int]
filterNumbersLessThan n list = filter (< n) list

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . filterNumbersLessThan n) numbers
  -}

-- Evaluating e^x 

  eX :: Double -> Double
  eX n = exRecur 0 0
    where
      exRecur 10 result = roundFloat result 4
      exRecur i result = exRecur (i + 1) (result + ((n ** i) / (factorial i)))

{- Code that ran

roundFloat float decimals = (fromInteger $ round $ float * (10^decimals)) / (10.0^^decimals)

factorial 0 = 1
factorial n = factRecur n 1
    where factRecur currentN currentProduct | currentN == 1 = currentProduct
                                            | otherwise = factRecur (currentN - 1) (currentProduct * currentN)


solve :: Double -> Double
solve n = exRecur 0 0
    where
      exRecur 10 result = roundFloat result 4
      exRecur i result = exRecur (i + 1) (result + ((n ** i) / (factorial i)))

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words

-}
