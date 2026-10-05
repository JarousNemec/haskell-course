module IsTriangle where

stringToDouble :: String -> Double
stringToDouble s = read s

-- sqrt consumes only floating point number so there is a workaround called fromIntegral 
-- or we just need to create function stringToDouble that returns type Double
isHypotenuse :: Double -> Double -> Double -> Bool
isHypotenuse a b c = sqrt ( a ^ 2 + b ^ 2) == c

isTriangle :: Double -> Double -> Double -> Bool
isTriangle a b c = a + b > c && a + c > b && b + c > a

isRightTriangle :: Double -> Double -> Double -> Bool
isRightTriangle a b c = isHypotenuse a b c || isHypotenuse a c b || isHypotenuse b c a

main :: IO ()
main = do
    putStr "Enter lenght a:"
    aString <- getLine
    let a = stringToDouble aString

    putStr "Enter lenght b:"
    bString <- getLine
    let b = stringToDouble bString

    putStr "Enter lenght c:"
    cString <- getLine
    let c = stringToDouble cString

--  print(a + b > c && a + c > b && b + c > a)
    if isTriangle a b c
        then
            putStrLn "Yes, it is triangle"
        else
            putStrLn "No, it isnt triangle"

    if isHypotenuse a b c
        then
            putStrLn "C is hypotenuse of a right triangle"
        else
            putStrLn "C is not hypotenuse of a right triangle"
    if isHypotenuse a c b
        then
            putStrLn "B is hypotenuse of a right triangle"
        else
            putStrLn "B is not hypotenuse of a right triangle"
    if isHypotenuse b c a
        then
            putStrLn "A is hypotenuse of a right triangle"
        else
            putStrLn "A is not hypotenuse of a right triangle"

    if (isRightTriangle a b c) == False 
        then
            putStrLn "And isnt right"
        else
            putStrLn "And is right"
    
    