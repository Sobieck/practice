{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0004.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0004.hs
-}
-- :r :q :set +s for times

module Problem0004Tests where

  import Test.HUnit
  import System.IO

  import Problem0004

  testCases = TestList
    [
      TestCase $ assertEqual "maxPalindromProduct 1 9 should return 9." 9 (maxPalindromProduct 1 9),
      TestCase $ assertEqual "maxPalindromProduct 1 11 should return 121." 121 (maxPalindromProduct 1 11),
      TestCase $ assertEqual "maxPalindromProduct 10 99 should return 9009." 9009 (maxPalindromProduct 10 99),

      TestCase $ assertEqual "lengthOfArrayThatAddsOneToOddNumbers [1..5] should return 6." 6 (lengthOfArrayThatAddsOneToOddNumbers [1..5]),
      TestCase $ assertEqual "lengthOfArrayThatAddsOneToOddNumbers [1..10] should return 10." 10 (lengthOfArrayThatAddsOneToOddNumbers [1..10]),
      TestCase $ assertEqual "lengthOfArrayThatAddsOneToOddNumbers [1..3021] should return 3022." 3022 (lengthOfArrayThatAddsOneToOddNumbers [1..3021]),

      TestCase $ assertEqual "halveArray [1..10] should return [1..5]." [1..5] (halveArray [1..10]),
      TestCase $ assertEqual "halveArray [1..19] should return [1..10]." [1..10] (halveArray [1..19]),
      TestCase $ assertEqual "halveArray [1..999] should return [1..500]." [1..500] (halveArray [1..999]),

      TestCase $ assertEqual "zipNumberWithReverse 1 should return [('1','1')]." [('1','1')] (zipNumberWithReverse 1),
      TestCase $ assertEqual "zipNumberWithReverse 1231 should return [('1','1'),('2','3'),('3','2'),('1','1')]." [('1','1'),('2','3'),('3','2'),('1','1')] (zipNumberWithReverse 1231),
      TestCase $ assertEqual "zipNumberWithReverse 123 should return [('1','3'),('2','2'),('3','1')]." [('1','3'),('2','2'),('3','1')] (zipNumberWithReverse 123),

      TestCase $ assertEqual "doesTupleContainSameItem (1,2) should return False." False (doesTupleContainSameItem (1,2)),
      TestCase $ assertEqual "doesTupleContainSameItem (False,True) should return False." False (doesTupleContainSameItem (False, True)),
      TestCase $ assertEqual "doesTupleContainSameItem (True,True) should return True." True (doesTupleContainSameItem (True,True)),
      TestCase $ assertEqual "doesTupleContainSameItem ('p','p') should return True." True (doesTupleContainSameItem ('p','p')),
      TestCase $ assertEqual "doesTupleContainSameItem (1,1) should return True." True (doesTupleContainSameItem (1,1)),

      TestCase $ assertEqual "isPalidrome 1221 should return True." True (isPalidrome 1221),
      TestCase $ assertEqual "isPalidrome 88888 should return True." True (isPalidrome 88888),
      TestCase $ assertEqual "isPalidrome 1234321 should return True." True (isPalidrome 1234321),
      TestCase $ assertEqual "isPalidrome 1 should return True." True (isPalidrome 1),
      TestCase $ assertEqual "isPalidrome 1212 should return False." False (isPalidrome 1212),
      TestCase $ assertEqual "isPalidrome 123456 should return False." False (isPalidrome 123456)
    ]

  tests = runTestTT testCases
