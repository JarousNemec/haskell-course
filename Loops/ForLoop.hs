module ForLoop where

forLoop :: Int -> Int -> (Int -> IO ()) -> IO()
forLoop index end action
    | index > end = return ()
    | otherwise = do
        action index
        forLoop (index + 1) end action

main :: IO ()
main = forLoop 1 5 $ \i -> do
    putStrLn ("Running for " ++ show i ++ ". time ...")
    putStrLn "Press ENTER to continue."
    _ <- getLine
    putStrLn "Continuing..."

-- profi way to have for loop
{-
import Control.Monad (forM_)

main :: IO ()
main = do    
    forM_ [1..5] $ \i -> do
        putStrLn ("Running for " ++ show i ++ ". time ...")
        putStrLn "Press ENTER to continue."
        _ <- getLine
        putStrLn "Continuing..."
-}