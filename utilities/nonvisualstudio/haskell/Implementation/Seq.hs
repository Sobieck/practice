-- to use - in ghci call use the following path
-- c:\Users\Thomas\Documents\GitHub\practice\utilities\nonvisualstudio\haskell\Implementation\Seq.hs
-- import Seq

module Seq where

  import Control.Parallel(par)

  --http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html
  pMap :: (a -> b) -> [a] -> [b]
  pMap f (x:xs) = let r = f x
                  in r `par` r : pMap f xs
  pMap _ _      = []
