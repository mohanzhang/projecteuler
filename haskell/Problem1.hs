module Problem1 where

solve :: Int
solve = sum $ filter (\n -> ((== 0) . (`mod` 3)) n || ((== 0) . (`mod` 5)) n) (take 999 [1..])
