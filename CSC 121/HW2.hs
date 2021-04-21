--Ch 3
--1
--a list of chars
--b tuple of chars
--c list of tuples
--d tuple of list
--e list of functions 

--3
--second xs = head (tail xs) type [a] -> a
--swap (x,y) = (y,x)         type (b, a) -> (a, b)
--pair x y = (x,y)             type a -> b -> (a, b)
--double x = x*2               type Num a => a -> a
--palindrome xs = reverse xs == xs type Eq a => [a] -> Bool
--twice f x = f (f x)          type (t -> t) -> t -> t

--5
--It isnt possible to apply the Eq calss to functions becasue saying
--one function is (==) or (/=) to another function doesnt make sense
--you have to instead look at the output of the function to determine their equality

--Ch4

--1
--halve xs = (take n xs, drop n xs)
--           where n = length xs `div` 2
--recursive

halve [] = ([],[])
halve [x] = ([x],[])
halve (x:y:xs) = (x:l1, y:l2 )
      where
         (l1,l2) = halve xs

--2
third xs = head (tail (tail xs))
--third x:y:z _ = z

--3
safetail xs = if null xs then [] else tail xs

--4
--False || False = False
--False || True = True
--True  || False = True
--True  || True = True

--False || False = False
--_ || _ = True

--False || b = b
--True || _ = True

--b || c | b == c    = b
--       | otherwise = True

--5 Cant get this one working...
and' x y = if  x == True then
              if y == True then True
              else False 
           else False 
               

--6 Doesnt makse sense either..

--7
mult = \x ->(\y -> (x * y))

--8
luhnDouble :: Int -> Int
luhnDouble n | n*2 < 9     = n*2
             | n*2 > 9     = (n*2)-9 
  
luhn :: Int -> Int -> Int -> Int -> Bool
luhn x1 x2 x3 x4 | (luhnDouble x1 + x2 + luhnDouble x3 + x4) `mod` 10 == 0    = True
                 | otherwise = False














