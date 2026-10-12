module BasicFunctions where

timesTwo :: Int -> Int
timesTwo a = a * 2

-- sumSquares 3 4         result: 25
sumSquares :: Double -> Double -> Double
sumSquares a b = (a ^ 2) + (b ^ 2)

-- isSmaller 1 5          result: True
-- isSmaller 8 2          result: False
-- isSmaller True False   result: False
-- isSmaller 'a' 'b'      result: True 
isSmaller :: Double -> Double -> Bool
isSmaller a b = a < b

-- default function is "min" 
-- smaller 4 5            result: 4 
getSmaller :: Double -> Double -> Double
getSmaller a b = if a < b then a else b 

{-
ghci> logicalSummary True False
True
ghci> logicalSummary False True
True
ghci> logicalSummary False False
False
ghci> logicalSummary True True  
True
ghci>
-}
logicalSummary :: Bool -> Bool -> Bool
logicalSummary a b = do
    if a 
        then a 
    else 
        if b 
            then 
                b 
            else 
                b

{-
  !!!!!                                    !!!!!
  !!!!!          pattern matching          !!!!!
  !!!!!                                    !!!!!
-}
logicalSummary' :: Bool -> Bool -> Bool
logicalSummary' True False = True 
logicalSummary' True True = True 
logicalSummary' False True = True 
logicalSummary' False False = False 

logicalSummary'' :: Bool -> Bool -> Bool
logicalSummary'' False False = False
logicalSummary'' _ _ = True

{-
ghci> logicalSummary (a > 0) (a < 0)
True
ghci> a = -1
ghci> a
-1
ghci> logicalSummary (a > 0) (a < 0)
True
ghci> a = 0                         
ghci> a
0
ghci> logicalSummary (a > 0) (a < 0)
False
-}

--TODO logical times

{-
ghci> absValue (-2)
2.0
ghci> absValue 2 
2.0
!!!!!    the minus number must be in brackets    !!!!!
-}
absValue :: Double -> Double
absValue a = if a < 0 then -a else a

{-
  !!!!!                                    !!!!!
  !!!!!    guards or guarded equations     !!!!!
  !!!!!                                    !!!!!
-}
absValue' :: Double -> Double
absValue' a 
    | a < 0 = -a
    | otherwise = a

{-
ghci> signFunction 10
1.0
ghci> signFunction' 10
1.0
ghci> signFunction' (-10)
-1.0
ghci> signFunction' 0    
0.0
ghci>
-}

signFunction :: Double -> Double
signFunction a = do
    if (a == 0)
        then 
            0
        else
            if (a < 0)
                then
                    (-1)
                else
                    1

signFunction' :: Double -> Double
signFunction' a 
    | a == 0 = 0
    | a < 0 = (-1)
    | otherwise = 1


{-
  !!!!!                                                    !!!!!
  !!!!!    count factorial with recursion using guards     !!!!!
  !!!!!                                                    !!!!!
  
    ghci> factorial 10 10
    3628800
    ghci> factorial' 3   
    6     
    ghci> factorial' 10
    3628800
    ghci> factorial  3 3
    6 
                                                     
-}

factorial :: Int -> Int -> Int
factorial number summary
    | (number - 1) <= 0 = summary
    | (number - 1) > 0 = factorial (number - 1) (summary * (number - 1))
    | otherwise = 0

factorial' :: Int -> Int
factorial' n
    | n < 0 = error "Factorial is not defined for minus numbers!!!"
    | n == 0 = 1
    | otherwise = n * factorial' (n - 1)


{-
  !!!!!                                                 !!!!!
  !!!!!    count modulo with recursion using guards     !!!!!
  !!!!!                                                 !!!!!

ghci> myModulo (-1) 5
-1    
ghci> myModulo 1 5   
1     
ghci> myModulo 6 5
1     

-}

myModulo :: Int -> Int -> Int
myModulo a d
    | d < 0 = error "Dividing by zero isnt allowed!!!"
    | a < d = a
    | otherwise = myModulo (a - d) d
