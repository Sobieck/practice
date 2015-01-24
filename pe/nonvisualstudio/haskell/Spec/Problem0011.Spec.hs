{-
ghci c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Spec\Problem0011.Spec.hs
 c:\Users\Thomas\Documents\GitHub\practice\pe\nonvisualstudio\haskell\Implementation\Problem0011.hs
 c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-}
-- :r :q :set +s for times

module Problem0011Tests where

  import Test.HUnit
  import System.IO
  import TestAbstract

  import Problem0011

  testCases = TestList
    [
        TestCase $ assertEqual "maxOfAllSetsOfFour testSpace1 should return 5832." 5832 (maxOfAllSetsOfFour testSpace1),
        TestCase $ assertEqual "maxOfAllSetsOfFour testSpace2 should return 6561." 6561 (maxOfAllSetsOfFour testSpace2),

        TestCase $ assertEqual "maxOfAllVerticalAndDiagonalTuples testSpace1 should return 1080." 1080 (maxOfAllVerticalAndDiagonalTuples testSpace1),
        TestCase $ assertEqual "maxOfAllVerticalAndDiagonalTuples testSpace2 should return 6561." 6561 (maxOfAllVerticalAndDiagonalTuples testSpace2),

        TestCase $ assertEqual "maxOfHorizontalMaxProducts testSpace1 should return 5832." 5832 (maxOfHorizontalMaxProducts testSpace1),
        TestCase $ assertEqual "maxOfHorizontalMaxProducts testSpace2 should return 6561." 6561 (maxOfHorizontalMaxProducts testSpace2),

        TestCase $ assertEqual "constructVerticalTuples" [(0,1,1,2),(0,1,1,5),(0,2,4,6),(0,2,4,7),(1,3,5,9), (1,1,2,3),(1,1,5,9),(2,4,6,9),(2,4,7,9),(3,5,9,8)] (constructVerticalTuples testSpace1),
        TestCase $ assertEqual "constructDiagonalTuples" [(0,1,4,7),(0,2,4,9),(1,1,6,9),(1,4,7,8)] (constructDiagonalTuples testSpace1),
        TestCase $ assertEqual "constructDiagonalTuplesLToR" [(1,2,4,5),(0,2,1,2),(3,4,6,9),(2,4,5,3)] (constructDiagonalTuplesLToR testSpace1),
        TestCase $ assertEqual "constructAllVerticalAndDiagonalTuples" [(0,1,1,2),(0,1,1,5),(0,2,4,6),(0,2,4,7),(1,3,5,9),(1,1,2,3),(1,1,5,9),(2,4,6,9),(2,4,7,9),(3,5,9,8),(0,1,4,7),(0,2,4,9),(1,1,6,9),(1,4,7,8),(1,2,4,5),(0,2,1,2),(3,4,6,9),(2,4,5,3)] (constructAllVerticalAndDiagonalTuples testSpace1),

        TestCase $ easyAssertEqual "maxOfListOf4WideTuples" maxOfListOf4WideTuples [(2,2,2,30),(1,2,3,4),(1,2,3,4)] 240,
        TestCase $ easyAssertEqual "maxOfListOf4WideTuples" maxOfListOf4WideTuples [(2,2,2,30),(1,2,3,4),(1,2,3,4),(10,10,10,10)] 10000,
        TestCase $ easyAssertEqual "multiply4WideTuple" multiply4WideTuple (1,2,3,4) 24,
        TestCase $ easyAssertEqual "multiply4WideTuple" multiply4WideTuple (2,2,2,30) 240,

        TestCase $ easyAssertEqual "maxProductOf4ElementsIn" maxProductOf4ElementsIn [1,2,3,4,5,6,7,8,9,9,9,9] 6561,
        TestCase $ easyAssertEqual "maxProductOf4ElementsIn" maxProductOf4ElementsIn [1,2,3,9,9,9,8,7,6,5,2,3] 5832,
        TestCase $ easyAssertEqual "maxProductOf4ElementsIn" maxProductOf4ElementsIn [1,2,1,1,0,0,0,0,0,9,9,9] 2
    ]

  tests = runTestTT testCases

  testSpace1 =
      [
        [0,0,0,0,1],
        [1,1,2,2,3],
        [1,1,4,4,5],
        [2,5,6,7,9],
        [3,9,9,9,8]
      ]

  testSpace2 =
      [
        [8,9,9,9,9],
        [1,1,2,2,9],
        [1,1,4,4,9],
        [2,5,6,7,9],
        [3,9,9,9,8]
      ]

  questionSpace =
      [
        [08, 02, 22, 97, 38, 15,  0, 40,  0, 75, 04, 05, 07, 78, 52, 12, 50, 77, 91,  8],
        [49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 04, 56, 62,  0],
        [81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 03, 49, 13, 36, 65],
        [52, 70, 95, 23, 04, 60, 11, 42, 69, 24, 68, 56, 01, 32, 56, 71, 37, 02, 36, 91],
        [22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80],
        [24, 47, 32, 60, 99, 03, 45, 02, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50],
        [32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70],
        [67, 26, 20, 68, 02, 62, 12, 20, 95, 63, 94, 39, 63, 08, 40, 91, 66, 49, 94, 21],
        [24, 55, 58, 05, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72],
        [21, 36, 23, 09, 75,  0, 76, 44, 20, 45, 35, 14,  0, 61, 33, 97, 34, 31, 33, 95],
        [78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 03, 80, 04, 62, 16, 14, 09, 53, 56, 92],
        [16, 39, 05, 42, 96, 35, 31, 47, 55, 58, 88, 24,  0, 17, 54, 24, 36, 29, 85, 57],
        [86, 56,  0, 48, 35, 71, 89, 07, 05, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58],
        [19, 80, 81, 68, 05, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 04, 89, 55, 40],
        [04, 52, 08, 83, 97, 35, 99, 16, 07, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66],
        [88, 36, 68, 87, 57, 62, 20, 72, 03, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69],
        [04, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 08, 46, 29, 32, 40, 62, 76, 36],
        [20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 04, 36, 16],
        [20, 73, 35, 29, 78, 31, 90, 01, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 05, 54],
        [01, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 01, 89, 19, 67, 48]]
