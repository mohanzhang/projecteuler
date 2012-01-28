module Problem7 where

import Data.List

solve :: Integer
solve = primes !! 10000

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (x:xs) =  x : sieve [n | n<-xs, n `mod` x > 0]
