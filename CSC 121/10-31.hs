--Chapter 7 Notes 10/31/2019
add :: Int -> Int -> Int
add = \ x -> (\y -> x + y)

twice :: (t -> t) -> t -> t
twice f x  = f (f x)

isEven = \n -> n `mod` 2 == 0

isPrime n = factors n == [1..n]
    where
      factors n = [x | x <- [1..n], n `mod` x == 0]

primes n = [ x | x <- [1..n], isPrime x]

primes' n = filter isPrime [1..n]

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + (sum xs) --pattern matching (x:xs)

sum'' = foldr (+) 0
--sum'' xs = foldr (+) 0 xs
--foldr takes in 3 things...last is the list..applies function...0 starting sum

--foldr (+) 0 [3,5,9,1)
-- 3+(5+(9+(1+0)))

--foldl (+) 0 [3,5,9,1)
--(((0+3)+5)+9)+1)