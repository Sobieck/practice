-- to use - in ghci call use the following path
-- c:\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\TestAbstract.hs
-- import TestAbstract

module TestAbstract where

    import Test.HUnit

    easyAssertEqual functionName function input expected = assertEqual nameOfTest expected (function input)
        where
            nameOfTest = functionName ++ " " ++ (show input) ++ " should return " ++ (show expected) ++ "."
