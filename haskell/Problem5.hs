module Problem5 where

-- Observations
-- The number must be divisible by 19*20=380, so we have to search in
-- increments of 380

solve :: Int
solve = head [x | x<-[380, 760 ..], (maximum $ map (x `mod`) [3..18]) == 0]
