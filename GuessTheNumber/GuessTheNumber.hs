module GuessTheNumber where

import System.Random (randomRIO)
{-
    The lib random isnt in the GHC environment by default so you need to install is manualy
    
    cabal update
    cabal install --lib random
-}

main :: IO ()
main = do
    randomNumber <- randomRIO(1, 10) :: IO Int
    print randomNumber
    putStrLn "Guess the number from 1 to 10"
    
