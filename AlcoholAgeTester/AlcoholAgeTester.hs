module AlcoholAgeTester where

stringToInt :: String -> Int
stringToInt s = read s

main :: IO ()
main = do
    putStrLn "How old are you?"
    putStrLn "Enter your age as just one number:"
    ageString <- getLine
    let age = stringToInt ageString
    if age >= 18 
        then 
            putStrLn "You can drink." 
        else 
            putStrLn "You are too young!"