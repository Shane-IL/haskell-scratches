{-
    Tutorial https://www.youtube.com/watch?v=02_H3LjqMr8
    last stop 12:38
-}

import Data.List
import System.IO

sumOfNums = sum [1..1000]

addEx :: Int -> Int -> Int
addEx x y = x + y


modEx :: Int -> Int -> Int
modEx x y =  x `mod` y

negNumEx :: Int -> Int -> Int
negNumEx x y = x + (-y)

num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)