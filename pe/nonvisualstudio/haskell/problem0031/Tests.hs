module Problem0031Tests where
  import Test.Hspec
  import Test.QuickCheck
  import Control.Exception (evaluate)

  import Problem0031

  poundCoins =  [200, 100, 50, 20, 10, 5, 2, 1]

  tests :: IO ()
  tests = hspec $ do
  describe "Problem0031.coinSums" $ do
    it "should return 5 when asked to find the amount of 4 for the array [4,3,2,1]" $ do
      coinSums 4 [4,3,2,1] `shouldBe` (5 :: Int)

    it "should return 7 when asked to find the amount of 5 for the array [5,4,3,2,1]" $ do
      coinSums 5 [5,4,3,2,1] `shouldBe` (7 :: Int)

    it "proprety test" $
      property $ \x -> x == (x :: [Int])
