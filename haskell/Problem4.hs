module Problem4 where

-- Observations
-- Largest possible number is 999*999 = 998001, so we should search backwards
-- from here

solve :: Int
solve = maximum [x*y | x<-[999,998..100], y<-[999,998..100], reverse (show (x*y)) == show (x*y)]
