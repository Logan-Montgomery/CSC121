--Ch5 

--import for problem 10
import Data.Char

--1
square = [x^2 | x <- [1..100]]

--4
replicate' x y = [y | _ <- [1..x]]

--5
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

--6
factors n = sum [x | x <- [1..n], n `mod` x == 0, x /= n]
perfects n = [x | x <- [1..n], factors x == x]

--7 
single :: [(Int,Int)]
single = concat [[(x,y) | y <- [3,4]] | x <- [1,2]]

--8 

find k t = [v | (k',v) <- t, k == k']
positions x xs = [i | (x',i) <- zip xs [0..], x == x'] 

positions' x xs = find x ( zip xs [0..] )

--9
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]

--10 SEE PIC FOR ODD OUTPUTS
lowers :: String -> Int
lowers xs = length [x | x <- xs, x >= 'a' && x <= 'z']

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

cap2int :: Char -> Int                  
cap2int c = ord c - ord 'A'                

int2cap :: Int -> Char
int2cap n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | isUpper c = int2cap ((cap2int c + n) `mod` 26)  
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]

table :: [Float]
table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

percent :: Int -> Int -> Float
percent n m = (fromIntegral n / fromIntegral m) * 100

freqs :: String -> [Float]
freqs xs = [percent (count x xs) n | x <- ['a'..'z']]
     where n = lowers xs

chisqr :: [Float] -> [Float] -> Float
chisqr os es = sum [((o-e)^2)/e | (o,e) <- zip os es]

rotate :: Int -> [a] -> [a]
rotate n xs = drop n xs ++ take n xs

crack :: String -> String
crack xs = encode (-factor) xs
     where
          factor = head (positions' (minimum chitab) chitab)
          chitab = [chisqr (rotate n table') table | n <- [0..25]]
          table' = freqs xs


