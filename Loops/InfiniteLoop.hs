module InfiniteLoop where

import Control.Monad (forever)

main :: IO ()
main = forever ( do
    putStrLn "Running..."
    putStrLn "Press ENTER to continue."
    _ <- getLine
    putStrLn "Continuing...")