type Pos = (Int, Int)

data Move = North | South | East | West

move :: Move -> Pos -> Pos
move North (x,y) = (x,y+1)
move South (x,y) = (x,y-1)
move East (x,y) = (x+1,y)
move West (x,y) = (x-1,y)


--type IO = World -> (a, World)
--type IO a = World -> (a,World)
--data IO a = ...

--getChar :: IO Char
--getChar = ...

--putChar :: Char -> IO ()
--putChar c = ..

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]