module Problem0030 where

  import Data.Char
  import Data.List(sort)

  type Composite = (OriginalNumber, SumOfPowers, DigitsLeft, SumIsLessThanOrEqualToNumber)
  type OriginalNumber = Int
  type SumOfPowers = Int
  type DigitsLeft = [Int]
  type SumIsLessThanOrEqualToNumber = Bool

  valuesOfDigits :: Int -> [Int]
  valuesOfDigits number = reverse
                          $ sort
                          $ map digitToInt
                          $ show number

  getOriginalNumber :: Composite -> Int
  getOriginalNumber (original, _, _, _) = original

  getSumOfPowers :: Composite -> Int
  getSumOfPowers (_, sumOfPowers, _, _) = sumOfPowers

  getDigitsLeft :: Composite -> [Int]
  getDigitsLeft (_, _, digits, _) = digits

  getLessThanNumber :: Composite -> Bool
  getLessThanNumber (_, _, _, isLessThan) = isLessThan

  createCompositeFirst :: Int -> Composite
  createCompositeFirst number = (number, 0, [], False)



-- max (exp + 1) * (9 ^ exp)
--1. Figure out theoretical max
--2. Splitter
--3. Sieve. Falsify all that have a number and are less than the highest input.
--    A. Sort by max number for each number. Maybe we need a tuple to keep track of original number.
--           a. Haskell type. Original number, Current sum, array of each original number sorted, array of --powers
--    B. Delete from array all that are false.
