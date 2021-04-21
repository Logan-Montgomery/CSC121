--Chapter 5 Excercise 9

--chisqr :: [Float] -> [Float] -> Float
--chisqr os es = sum [((o-e)^2)/e | (o,e) <- zip os es]

--scalarproduct :: [Int] -> [Int] -> Int
--scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]




-- Chapter 6.. Oct 24, 2019
--Recursion

fac :: Int -> Int
fac n = product [1..n]

fac' :: Int -> Int
fac' 0 = 1
fac' n = (fac' (n-1)) * n

product' :: Num a => [a] -> a
product' [] = 1
product' (x:xs) = x * (product' xs)

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : (zip' xs ys)

--fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

--fibhelp :: Int -> Int -> Int -> Int
--fibhelp i prev curr = curr + (fib (i-1) 
