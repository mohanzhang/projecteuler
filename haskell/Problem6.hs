module Problem6 where

solve :: Int
solve = (sum [1..100])^2 - (sum [x^2 | x<-[1..100]])
