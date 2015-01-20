-- ghci C:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\haskell\HUnitLearnings.hs C:\Users\Thomas\Documents\GitHub\practice\helloworld\nonvisualstudio\haskell\SimpleStuff.hs
-- :r
-- :q
-- :set +s for times

module HUnitLearnings where

  import Data.Char
  import Test.HUnit
  import System.IO
  import SimpleStuff

  testCases = TestList
    [
      TestCase $ assertEqual "test upCase" "FOO" (map toUpper "foo"),
      TestCase $ assertEqual "test squared" 4 (squared 2)
    ]

  tests = runTestTT testCases
