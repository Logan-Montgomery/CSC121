--add using tuple
add :: (Int, Int) -> Int
add (x,y) = x + y

add2 :: Num a => (a, a) -> a
add2 (x,y) = x + y


-- add using curried functions

add' :: Int -> (Int -> Int)
add' x y = x + y

-- add' x = \y -> x + y


even' :: Integral a => a -> Bool
even' n = n `mod` 2 == 0

myabs :: Int -> Int
myabs n = if n >= 0 then n else -n    --if expression

--guarded expression

abs' :: Int -> Int
abs' n | n >= 0     =n
       | otherwise  = -n