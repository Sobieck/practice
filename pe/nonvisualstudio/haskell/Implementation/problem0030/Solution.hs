module Problem0030 where

  import Data.Char
  import Data.List(sort)

  type Composite = (OriginalNumber, SumOfPowers, DigitsLeft, SumIsLessThanOrEqualToNumber, SumIsEqualToOriginal)
  type OriginalNumber = Int
  type SumOfPowers = Int
  type DigitsLeft = [Int]
  type SumIsLessThanOrEqualToNumber = Bool
  type SumIsEqualToOriginal = Bool

  valuesOfDigits :: Int -> [Int]
  valuesOfDigits number = reverse
                          $ sort
                          $ filter (>0)
                          $ map digitToInt
                          $ show number

  getOriginalNumber :: Composite -> Int
  getOriginalNumber (original, _, _, _, _) = original

  getSumOfPowers :: Composite -> Int
  getSumOfPowers (_, sumOfPowers, _, _, _) = sumOfPowers

  getDigitsLeft :: Composite -> [Int]
  getDigitsLeft (_, _, digits, _, _) = digits

  getLessThanNumber :: Composite -> Bool
  getLessThanNumber (_, _, _, isLessThan, _) = isLessThan

  getIsSumEqualToOriginal :: Composite -> Bool
  getIsSumEqualToOriginal (_,_,_,_,isEqual) = isEqual

  createComposite :: Int -> Composite
  createComposite number = (number, 0, valuesOfDigits number, False, False)

  updateComposite :: Composite -> Int -> Composite
  updateComposite oldComposite numberToAdd = (newOriginal, newSum, newDigitsLeft, isLessThanOrEqual, isEqual)
    where
      newOriginal = getOriginalNumber oldComposite
      newDigitsLeft = tail $ getDigitsLeft oldComposite
      newSum = (getSumOfPowers oldComposite) + numberToAdd
      isLessThanOrEqual = newOriginal >= newSum
      isEqual = (length newDigitsLeft == 0) && newOriginal == newSum

  findPowerOfDigitsEqualsNumber :: Int -> [Int]
  findPowerOfDigitsEqualsNumber power = filter (>1) (calcPower initialList 9)
    where
      maximumInt = (power + 1) * (9 ^ power)
      initialList = map createComposite [1..maximumInt]
      calcPower list 0 = map getOriginalNumber $ filter getIsSumEqualToOriginal list
      calcPower list int = calcPower newList (int - 1)
        where
          currentNumberToAdd = int ^ power
          newList = map updateCompositeIfNeedBe list -- we should delete all that are over at this point. But it isn't working for some reason. Still computes in under 9 seconds
            where
              updateCompositeIfNeedBe :: Composite -> Composite
              updateCompositeIfNeedBe composite
                | (length $ getDigitsLeft composite) == 0 = composite
                | (head $ getDigitsLeft composite) == int = updateCompositeIfNeedBe $ updateComposite composite currentNumberToAdd
                | otherwise = composite

    -- recurse 9 - 0
      -- calculate power of that number
      -- update if list contains the current number
      -- 0 is stopping condition
      -- remove all SumIsLessThanOrEqualToNumber == False each iteration


-- max (exp + 1) * (9 ^ exp)
--1. Figure out theoretical max
--2. Splitter
--3. Sieve. Falsify all that have a number and are less than the highest input.
--    A. Sort by max number for each number. Maybe we need a tuple to keep track of original number.
--           a. Haskell type. Original number, Current sum, array of each original number sorted, array of --powers
--    B. Delete from array all that are false.
