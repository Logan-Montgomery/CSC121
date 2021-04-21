--Towers of hanoi
import Data.Char
import System.IO

--hanoi :: (Eq a1, Num a1) => a1 -> a2 -> a2 -> a2 -> [(a2, a2)]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a

--Boks getDigit
getDigit :: String -> IO Int
getDigit prompt = do putStr prompt
                     x <- getChar
                     newline
                     if isDigit x then
                        return (digitToInt x)
                     else
                        do putStrLn "ERROR: Invalid digit"
                           getDigit prompt

newline :: IO ()
newline = putChar '\n'

str2int y = do let x = read y :: Integer
               print x

getInt = do x <- getLine
            return (str2int "x")

--RUN THIS ONE
solveHanoi = do putStrLn "To solve tower of hanoi give Char name for 3 pegs"
                putStrLn "Peg1:"
                x <- getChar
                getChar
                putStrLn "Peg2:"
                y <- getChar
                getChar
                putStrLn "Peg3:"
                z <- getChar
                getChar
                n <- getDigit "Enter number of disks:"
                return ((hanoi n x y z))