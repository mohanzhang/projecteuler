module Problem2 where

solve :: Integer
solve = sum $ takeWhile (< 4000000) [n | n <- map memofib [0 ..], n `mod` 2 == 0]

memofib :: Int -> Integer
memofib = (map fib [0 ..] !!)
fib 0 = 0
fib 1 = 1
fib n = memofib(n-1) + memofib(n-2)
