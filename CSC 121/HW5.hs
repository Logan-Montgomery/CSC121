--import Data.list
import Data.Char
--1
--ordlist :: [Char] -> [int]
ordlist = map ord 

--2
multpairs :: Num a => [(a,a)] -> [a]
multpairs = map (\ (x,y) -> x*y)

multpairs' :: Num a => [(a,a)] -> [a]
multpairs' =  foldr (\ (x,y) lst -> (x*y):lst) []

--3
xor' :: Bool -> Bool -> Bool
xor' x y | x == True && y == False = True
        | x == False && y == True = True
        | otherwise = False

xor :: [Bool] -> Bool
xor = foldl xor' False

--4
duplist :: [a] -> [a]
duplist = foldr (\ x lst -> x:x:lst) []

--5
--eval :: [Int] -> Int -> Int
--eval = foldr (\ (xs) x -> (xs*x)^ex ex+1) 0

--6
--member' :: Eq a => a -> [a] -> Bool
--member' = foldl (\ y (x:xs) -> if y == x then True else (y:xs))

--7
member :: Eq a => a -> [a] -> Bool
member _ [] = False
member y (x:xs) = if y == x then True else member y (xs)

union :: Eq a => [a] -> [a] -> [a]
union = foldl (\ xs y -> if(member y xs) then (xs) else (y:xs))
--8 NOT WORKING
intersection :: Eq a => [a] -> [a] -> [a]
intersection = foldr (\ xs y -> if(member y xs) then (y:xs) else (xs))