-- Zach McMann Haskell Project
-- Guess The Number Game

import Data.Char
import System.IO

--Level 1 "Random" number
randomNumber1 = "5"
randomNumber2 = "69"
randomNumber3 = "420"

--Converts string to an int
str2int y = do let x = read y :: Integer
               return x

match1 = do putStrLn "Correct! You win nothing, but here's round two!" 
            guess2

match2 = do putStrLn "Correct! You win nothing, but here's round three!" 
            guess3

match3 = do putStrLn "Correct! You win nothing" 


--Begins level 1 with a range from 0 to 9 THIS WORKS FOR CHARS 
guess = do putStrLn "Level 1 starts with a number between 0 and 9"
           putStrLn "Guess a number between 0 and 9:"
           x <- getLine
           if x == randomNumber1 then
              match1
           else
              tryAgain

--THIS IS FOR STRINGS
--ALSO MAYBE ABLE TO MAKE RANDOM STRING???
guess2 = do putStrLn "Level 2 starts with a number between 0 and 99"
            putStrLn "Guess a number between 0 and 99:"
            x <- getLine
            if x == randomNumber2 then
               match2
            else
               tryAgain2

guess3 = do putStrLn "Level 3 starts with a number between 0 and 999"
            putStrLn "Guess a number between 0 and 999:"
            x <- getLine
            if x == randomNumber3 then
               match3
            else
               tryAgain3


tryAgain = do putStrLn "Close, but no cigar!"
              guess

tryAgain2 = do putStrLn "Close, but no cigar!"
               guess2

tryAgain3 = do putStrLn "Close, but no cigar!"
               guess3

