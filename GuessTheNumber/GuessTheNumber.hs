module GuessTheNumber where

import System.Random (randomRIO)
{-
    The lib random isnt in the GHC environment by default so you need to install is manualy
    Enter following lines to your bash:

    > cabal update
    > cabal install --lib random
-}

stringToInt :: String -> Int
stringToInt s = read s

guess :: Int -> IO()
guess n = do
    input <- getLine
    let inputNumber = stringToInt input
    if inputNumber == n 
        then do
            putStrLn "Correct."
        else do
            putStrLn "Incorrect!" 
            putStrLn "Enter new number:" 
            guess n

main :: IO ()
main = do
    randomNumber <- randomRIO(1, 10) :: IO Int
    putStrLn "Guess the number from 1 to 10:"
    guess randomNumber
    putStrLn "Congratulation!!"


