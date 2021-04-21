--Exam 1 correction completing 6 problems
--Logan Montgomery

--1

--product' [] = 0
--product' (x:xs) = x*xs

--I went wrong in trying to make the function with list comprehension
--and I dont know list comprehension well enough to make it work
--I also made a recursive function with no base case

--3
third xs = head(tail (tail xs))
triple x = x*3
pal xs = reverse xs == xs
tuple x y z = (x,y,z)
rot (x,y,z) = (y,z,x)

--4
foo = (\x -> (\y -> (\z -> (y * z)+x)))

--5
hundcube = sum [x^3 | x <- [1..100]]

--6 

triangleNumber x = sum [n | n <- [1..x]]