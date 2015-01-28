-- ghci
-- :load C:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\haskell\QuickCheckLearnings.hs
-- :r
-- :set +s for times

module QuickCheckLearnings where

  import Test.QuickCheck
  import Test.HUnit

  --http://www.eecs.northwestern.edu/~robby/courses/395-495-2009-fall/quick.pdf
  --https://github.com/MirkoBonadei/journey-towards-property-based-testing

  qc_RevUnit :: Integer -> Bool
  qc_RevUnit x =  reverse [x] == [x]

  qc_RevApp :: [Int] -> [Int] -> Bool
  qc_RevApp xs ys = reverse (xs++ys) == reverse ys ++ reverse xs

  qc_RevRev :: [Int] -> Bool
  qc_RevRev xs = reverse (reverse xs) == xs

  --qc_BadRevApp :: [Int] -> [Int] -> Bool
  --qc_BadRevApp xs ys = reverse (xs++ys) == reverse xs ++ reverse ys

  qc_MaxLe :: Int -> Int -> Property
  qc_MaxLe x y = x <= y ==> max x y == y

  tests =
    quickCheck qc_RevUnit
    >> quickCheck qc_RevApp
    >> quickCheck qc_RevRev
    >> quickCheck qc_MaxLe
    -- >> quickCheck qc_BadRevApp
