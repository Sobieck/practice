module Problem0030 where

  import Data.Char
  import Data.List(sort)

  valuesOfDigits :: Int -> [Int]
  valuesOfDigits number = valOfDigits (show number) []
    where
      valOfDigits :: String -> [Int] -> [Int]
      valOfDigits "" result = reverse $ sort result
      valOfDigits number result = valOfDigits (tail number) ((digitToInt (head number)) : result)


-- max (exp + 1) * (9 ^ exp)
--1. Figure out theoretical max
--2. Splitter
--3. Sieve. Falsify all that have a number and are less than the highest input.
--    A. Sort by max number for each number. Maybe we need a tuple to keep track of original number.
--           a. Haskell type. Original number, Current sum, array of each original number sorted, array of --powers
--    B. Delete from array all that are false.
