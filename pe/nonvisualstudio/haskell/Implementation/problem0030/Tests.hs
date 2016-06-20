module Problem0030Tests where
  import Test.Hspec
  import Test.QuickCheck
  import Control.Exception (evaluate)
  import Data.List(sort)

  import Problem0030

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
      property $ \x -> (valuesOfDigits $ abs x) == (reverse $ sort $ valuesOfDigits $ abs x)
