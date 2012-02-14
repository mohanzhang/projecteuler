module Problem12 where

import Data.List (find, nub)
import Data.Maybe (fromJust)

-- Observations:
-- We really only need to find the divisors up to the square root of each
-- triangle number and double the number of divisors.

solve :: Int
solve = fromJust $ find ((>500) . numDivisors) (map memotri [0..])

numDivisors :: Int -> Int
numDivisors 1 = 1
numDivisors n = 2 * length sqrtDivisors
  where
    sqrtDivisors = filter ((==0) . (n `mod`)) [1..(floor . sqrt $ fromIntegral n)]

memotri :: Int -> Int
memotri = (map tri [0 ..] !!)
tri 0 = 0
tri n = memotri (n-1) + n
