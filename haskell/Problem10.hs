module Problem10 where

import Data.List.Ordered

solve :: Integer
solve = sum $ primesTo 2000000

-- With the optimization given here:
-- http://www.haskell.org/haskellwiki/Prime_numbers#From_Squares
primesTo :: Integer -> [Integer]
primesTo n = 2:(sieve [3,5..n])
  where
    sieve [] = []
    sieve (p:ps) =  p : sieve (ps `minus` [p*p, p*p+2*p..n])
