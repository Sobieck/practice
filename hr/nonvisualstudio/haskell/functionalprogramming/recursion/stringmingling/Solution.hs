module StringMingling where

  tupleToString :: (char,char) -> [char]
  tupleToString (a, b) = [a,b]

  mingle :: String -> String -> String
  mingle string1 string2 =
    concat
    $ map tupleToString
    $ zip string1 string2


  {-
  main :: IO ()
  main = do
     string1 <- getLine
     string2 <- getLine
     putStrLn $ mingle string1 string2


-}
