--1
sqsum :: [Int] -> Int
sqsum = foldr (\ x y -> x*x+y) 0


--2
truecount :: [Bool] -> Int
truecount  (x:xs) = foldr (\ _ z -> if(x  == True) then 1 + z else z) 0 xs

--3 Struggling to compare tuple elements, also need to acess tuple elements
--maxpairs :: [(Int,Int)] -> [Int]
--maxpairs  = foldr (\ x y -> if (x > y) then x else y)

--maxpairs' :: [(Int,Int)] -> [Int]
--maxpairs' [] = 0
--maxpairs' [(x,y)] = if (x > y) then (maxpairs' y) else (maxpairs' y)

maxpairs'' :: (Int,Int) -> Int
maxpairs'' (x,y) = if (x > y) then x else y

--maxpairs''' :: [(Int,Int)] -> [Int]
--maxpairs''' (x:xs)= foldr (\ x y -> if (x > y) then x else y)

--4 Look at max''' or max'', max' is for my notes
max' :: (Ord a) => [a] -> a
max' [x] = x
max' (x:y:xs) = if (x > y) then (max' (x:xs)) else (max' (y:xs))

max'' :: [Int] -> Int
max'' (x:xs)  = foldr (\ y z -> if (y > z) then y else z) x xs

max''' (x:xs) = foldr max x xs

--5 
min' (x:xs) = foldr min x xs

--6 same issue as number 3...


--7
map' f = foldr (\x xs -> f x : xs) []





--Length example..aslo for my notes
length' [] = 0
length' (x:xs) = 1 + (length' xs)

lentgh'' xs = foldr (\ _ z -> 1 + z) 0 xs