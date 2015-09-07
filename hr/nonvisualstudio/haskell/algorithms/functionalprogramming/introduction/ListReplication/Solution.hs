module ListReplication where

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
