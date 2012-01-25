module Problem3 where

import Data.List
import Data.Maybe
import Control.Monad.Fix

-- Observations:
-- The smallest prime factor divides the largest factor, but if the largest
-- factor isn't prime, then it must contain the largest prime factor.

target = 600851475143

spf :: Integer -> Integer
spf n = fromMaybe n $ find ((0 ==) . (n `mod`)) [2..(n-1)]

lpf :: Integer -> Integer
lpf n = let sf = spf n in if sf /= n then lpf (n `div` sf) else n

solve :: Integer
solve = lpf target
