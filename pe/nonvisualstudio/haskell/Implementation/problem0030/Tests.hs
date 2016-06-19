module Problem0030Tests where
  import Test.Hspec
  import Test.QuickCheck
  import Control.Exception (evaluate)

  import Problem0030

  tests :: IO ()
  tests = hspec $ do
  describe "Problem0030.valueOfDigits" $ do
    it "returns [0] when given 0" $ do
      valueOfDigits 0 `shouldBe` ([0] :: [Integer])

    it "returns a list of numbers with the same number of of elements as the length of the number" $
      property $ \x -> (length $ valueOfDigits $ abs x) == (length $ show $ abs $ x :: Int)
