module Problem0030Tests where
  import Test.Hspec
  import Test.QuickCheck
  import Control.Exception (evaluate)
  import Data.List(sort)

  import Problem0030

  absComposite :: Int -> Composite
  absComposite x = createComposite $ abs x

  tests :: IO ()
  tests = hspec $ do
  describe "Problem0030.valuesOfDigits" $ do
    it "returns [0] when given 0" $ do
      valuesOfDigits 0 `shouldBe` ([0] :: [Int])

    it "returns [1, 0] when given 10" $ do
      valuesOfDigits 10 `shouldBe` ([1, 0] :: [Int])

    it "returns [8, 6, 2, 1, 0] when given 16082" $ do
      valuesOfDigits 16082 `shouldBe` ([8, 6, 2, 1, 0] :: [Int])

    it "returns a list of numbers with the same number of of elements as the length of the number" $
      property $ \x -> (length $ valuesOfDigits $ abs x) == (length $ show $ abs $ x :: Int)

    it "returns a list of numbers that do not exceed the value of 9" $
      property $ \x -> all (<=9) $ valuesOfDigits $ abs x

    it "returns a list of numbers that all are greater than or equal to 0" $
      property $ \x -> all (>=0) $ valuesOfDigits $ abs x

    it "returns the values in descending order" $
      property $ \x -> (valuesOfDigits $ abs x) == (reverse $ sort $ valuesOfDigits $ abs x :: [Int])

  describe "Problem0030 when getting properties" $ do
    describe "getOriginalNumber" $ do
      it "returns 12 when given (12,0,[],False, False)" $ do
        getOriginalNumber (12,0,[],False, False) `shouldBe` 12

      it "returns 1125 when given (1125,0,[],False, False)" $ do
        getOriginalNumber (1125,0,[],False, False) `shouldBe` 1125

    describe "getSumOfPowers" $ do
      it "returns 12 when given (0,12,[],False, False)" $ do
        getSumOfPowers (0,12,[],False, False) `shouldBe` 12

      it "returns 1125 when given (0,1125,[],False, False)" $ do
        getSumOfPowers (0,1125,[],False, False) `shouldBe` 1125

    describe "getDigitsLeft" $ do
      it "returns [1..100] when given (0,0,[1..100], False, False)" $ do
        getDigitsLeft (0,0,[1..100], False, False) `shouldBe` [1..100]

      it "returns [1..10000] when given (0,0,[1..10000], False,False)" $ do
        getDigitsLeft (0,0,[1..10000], False, False) `shouldBe` [1..10000]

    describe "getLessThanNumber" $ do
      it "returns True when given (0,0,[], True, False)" $ do
        getLessThanNumber (0,0,[], True, False) `shouldBe` True

      it "returns False when given (0,0,[], False, False)" $ do
        getLessThanNumber (0,0,[], False, False) `shouldBe` False

    describe "getIsSumEqualToOriginal" $ do
      it "returns True when given (0,0,[], True, True)" $ do
        getIsSumEqualToOriginal (0,0,[], False, True) `shouldBe` True

      it "returns False when given (0,0,[], False, False)" $ do
        getIsSumEqualToOriginal (0,0,[], False, False) `shouldBe` False

  describe "Problem0030.createComposite" $ do
    it "returns a composite with the number passed in as the OriginalNumber" $
      property $ \x -> (abs x) == (getOriginalNumber $ absComposite x :: Int)

    it "returns a composite with 0 as the SumOfPowers" $
      property $ \x -> 0 == (getSumOfPowers $ absComposite x :: Int)

    it "returns a composite with false as the SumIsLessThanOrEqualToNumber" $
      property $ \x -> False == (getLessThanNumber $ absComposite x :: Bool)

    it "returns a composite with a DigitsLeft with the same number of of elements as the length of the number" $
      property $ \x -> (length $ getDigitsLeft $ absComposite x) == (length $ show $ abs $ x :: Int)

    it "returns a Composite with False as the SumIsEqualToOriginal" $
      property $ \x -> False == (getIsSumEqualToOriginal $ absComposite x :: Bool)

  describe "Problem0030.updateComposite" $ do
    it "returns a composite with the same originalNumber" $
      property $ \x -> (getOriginalNumber $ updateComposite (absComposite x) 0) == (abs x :: Int)

    it "returns a DigitsLeft that is equal to the tail passed in" $
      property $ \x -> (getDigitsLeft $ updateComposite (0, 0, x ++ [1], False, False) 0) == (tail $ x ++ [1] :: [Int])

    it "returns a SumOfPowers equal the old one plus the new number passed in" $
      property $ \x -> (getSumOfPowers $ updateComposite (0, (1 + (abs x)), [1], False, False) (1 + (abs x))) == ((1 + (abs x)) * 2)

    it "returns a SumOfPowers equal the old one plus the new number passed in" $
      property $ \x -> (getSumOfPowers $ updateComposite (0, 0, [1], False, False) (1 + (abs x))) == (1 + (abs x))
