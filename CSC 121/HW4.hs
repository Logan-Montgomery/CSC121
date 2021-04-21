--1
--base case
repeats :: Eq a => [a] -> Bool
repeats [] = False 
repeats [x] = False
repeats (x:y:xs) = if x == y then True else repeats (y:xs) 

--2
eval :: Num a => [a] -> a -> a
eval x n = evalh x n 0

evalh [] _ _ = 0
evalh (x:xs) n ex = (x * (n^ex)) + (evalh xs n (ex+1))

--3
qsort' :: (a -> a-> Bool) -> [a] -> [a]
qsort' _ [] = []
qsort' f (x:xs) = qsort' f smaller ++ [x] ++ qsort' f larger
               where
                   smaller = [a | a <- xs, f a x == True]
                   larger  = [b | b <- xs, f b x == False]

--4
merge :: Ord a => [a] -> [a] -> [a]
merge x [] = x
merge [] x = x
merge (x:xs) (y:ys) = if x <= y then [x] ++ merge xs (y:ys) else [y] ++ merge ys (x:xs) 

halve [] = ([],[])
halve [x] = ([x],[])
halve (x:y:xs) = (x:l1, y:l2 )
      where
         (l1,l2) = halve xs

msort [] = []
msort [x] = [x]
msort xs = merge (msort l1) (msort l2)
     where 
         (l1, l2) = halve xs

--5
member :: Eq a => a -> [a] -> Bool
member _ [] = False
member y (x:xs) = if y == x then True else member y (xs)

--6
union [] [] = []
union [] x = x
union x [] = x
union (x:xs) (y:ys) = if x == y then [x] ++ union xs ys else (if member x ys then union xs (y:ys) else [x] ++ union xs (y:ys))
 
--7
intersection x [] = []
intersection [] x = []
intersection (x:xs) (y:ys) = if (member x (y:ys) == True) 
                             then [x] ++ intersection xs (y:ys) 
                             else intersection xs (y:ys)

--Extra Credit its late...nope



















