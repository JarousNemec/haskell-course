module WhileTrue where

whileTrue :: IO () -> IO ()
whileTrue action = do
    action
    whileTrue action

main :: IO ()
main = whileTrue $ do
    putStrLn "Running..."
    putStrLn "Press ENTER to continue."
    _ <- getLine
    putStrLn "Continuing..."