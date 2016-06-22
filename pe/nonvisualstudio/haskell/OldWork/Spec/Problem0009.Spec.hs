{-
  ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0009.Spec.hs
  c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0009.hs
-}
-- :r :q :set +s for times


module Problem0009Tests where

  import Test.HUnit
  import System.IO

  import Problem0009

  testCases = TestList
    [
      TestCase $ assertEqual "euclidsFormula 2 1 should return (3,4,5)." (3,4,5) (euclidsFormula 2 1),
      TestCase $ assertEqual "euclidsFormula 10 3 should return (91, 60, 109)." (91, 60, 109) (euclidsFormula 10 3),

      TestCase $ assertEqual "sumOfTriple (1,10,100) should return 111." 111 (sumOfTriple (1,10,100)),
      TestCase $ assertEqual "sumOfTriple (1,12,1000) should return 111." 1013 (sumOfTriple (1,12,1000)),

      TestCase $ assertEqual "findFirstTripleThatSumsTo 12 should return (3,4,5)." (3,4,5) (findFirstTripleThatSumsTo 12),

      TestCase $ assertEqual "productOfFirstTripletThatSumsTo 12 should return 60." 60 (productOfFirstTripletThatSumsTo 12),
      TestCase $ assertEqual "productOfFirstTripletThatSumsTo 1000 should return 31875000." 31875000 (productOfFirstTripletThatSumsTo 1000)
    ]

  tests = runTestTT testCases
