-- Problem 14
module Main (main) where

import Data.Bits
import Data.List (maximumBy)
import Data.Function (on)

-- Observations:
-- ghci had a really hard time on this problem, despite my attempts to memoize.
-- Instead, I just relied on the magic that is ghc to brute force the answer.
-- Compiled with: ghc Problem14.hs --make -O2
-- and it ended up taking <4s. GHC authors are way too smart for me; I am not
-- worthy.

main = putStrLn $ show solve

solve :: Integer
solve = fst $ maximumBy (compare `on` snd) [(n,collatz n) | n <- [1..999999]]

collatz :: Integer -> Integer
collatz 1 = 1
collatz n | n .&. 1 == 0 = 1 + collatz (n `div` 2)
collatz n = 1 + collatz (3*n+1)

