--Ch 1 

--3
product' [] = 0
product' (n:ns) = n * product' ns

--4
           -- switched "larger" and "smaller" 
qsort [] = []
qsort(x:xs) = qsort larger ++ [x] ++ qsort smaller
              where
                 smaller = [a | a <- xs, a <= x]
                 larger = [b | b <- xs, b > x]

--5 change <= to <...idk what it does
qsort2 [] = []
qsort2(x:xs) = qsort2 smaller ++ [x] ++ qsort2 larger
              where
                 smaller = [a | a <- xs, a < x]
                 larger = [b | b <- xs, b > x]
--Ch2

--3
n = a `div` length xs
       where
         a = 10
         xs = [1,2,3,4,5]

--4
last' xs = head (reverse xs)

--5

removelast ns = reverse (tail (reverse ns))
removelast2 ns = take (length ns -1) ns



