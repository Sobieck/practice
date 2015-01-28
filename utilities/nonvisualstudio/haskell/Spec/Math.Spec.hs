{-
ghci c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Spec\Math.Spec.hs c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Math.hs
-}
-- :r - reload
-- :q - quit
-- :set +s for times

module MathTests where

  import Test.QuickCheck
  import Test.HUnit
  import System.IO


  import Math

  powModTests = TestList
    [
      TestCase $ assertEqual "powMod 4 13 497 should return 445." 445 (powMod 4 13 497),
      TestCase $ assertEqual "powMod 46565 0 961748941 should return 1." 1 (powMod 46565 0 961748941),
      TestCase $ assertEqual "powMod 46565 240437235 961748941 should return 533506838." 533506838 (powMod 46565 240437235 961748941),
      TestCase $ assertEqual "powMod 45621 419039293 301230039 should return 6285651." 6285651 (powMod 45621 419039293 301230039)
    ]



  testCases = TestList
    [
      powModTests
    ]

  qc_powMod_exponentOne :: Integer -> Integer -> Property
  qc_powMod_exponentOne base modulus =
    modulus > 0 ==>
      powMod base 1 modulus == base `mod` modulus

  qc_powMod :: Integer -> Integer -> Integer -> Property
  qc_powMod base theExponent modulus =
    modulus > 0 && theExponent > 1 ==>
      powMod base theExponent modulus == base ^ theExponent `mod` modulus

  tests = runTestTT testCases
    >> quickCheck qc_powMod_exponentOne
    >> quickCheck qc_powMod
