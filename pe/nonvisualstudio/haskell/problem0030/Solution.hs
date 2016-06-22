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
  createComposite number = (number, 0, valuesOfDigits number, True, False)

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
          newList = filter getLessThanNumber $ map updateCompositeIfNeedBe list
            where
              updateCompositeIfNeedBe :: Composite -> Composite
              updateCompositeIfNeedBe composite
                | (length $ getDigitsLeft composite) == 0 = composite
                | (head $ getDigitsLeft composite) == int = updateCompositeIfNeedBe $ updateComposite composite currentNumberToAdd
                | otherwise = composite
