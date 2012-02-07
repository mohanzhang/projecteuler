module Problem9 where

import Data.List (find)

-- Observations:
-- After learning some math from
-- http://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple,
-- it became a matter of implementing the formula and searching for the
-- answer

solve :: Int
solve = let Just (a,b,c) = find (\(a,b,c) -> a+b+c==1000) triples in a*b*c

triples :: [(Int, Int, Int)]
triples = [(m^2-n^2, 2*m*n, m^2+n^2) | (m,n)<-mns]
  where
    mns = [(m,n) | m<-[2..], n<-[1..m-1]]
