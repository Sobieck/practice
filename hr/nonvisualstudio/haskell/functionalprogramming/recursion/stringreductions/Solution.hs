module StringReduction where

  reduceString :: String -> String
  reduceString "" = ""
  reduceString inputString = reduceStringRecur inputString ""
    where
      reduceStringRecur "" result = result
      reduceStringRecur currentString result  | result == "" = reduceStringRecur tailOfCurrent [headOfCurrent]
                                              | isInResult = reduceStringRecur tailOfCurrent result
                                              | otherwise = reduceStringRecur tailOfCurrent (result ++ [headOfCurrent])
                                              where
                                                tailOfCurrent = tail currentString
                                                headOfCurrent = head currentString
                                                isInResult = elem headOfCurrent result


{-  
  main :: IO ()
  main = do
     string1 <- getLine
     putStrLn $ reduceString string1


-}
