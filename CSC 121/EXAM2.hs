
--1
triangleNumber :: Int -> Int
triangleNumber 0 = 0
triangleNumber n = n + triangleNumber (n-1)


triangleNumber'' x = sum [n | n <- [1..x]]

--2
--triangleNumber' :: Int -> Int
triangleNumber' n = foldr (+) 0 [1..n]

--3
repeats3 :: Eq a => [a] -> Bool
repeats3 [] = False 
repeats3 [_] = False
repeats3 [_,_] = False
repeats3 (x:y:z:xs) = if x == y && y == z then True else repeats3 (z:xs)

--4
filter' :: (a -> Bool) -> [a] -> [a]
filter' p xs = foldr (\x xs -> if p x then x:xs else xs ) [] xs

--5
sumpairs :: [(Int,Int)] -> [Int]
sumpairs = map (\ (x,y) -> x + y ) 

--6
append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs