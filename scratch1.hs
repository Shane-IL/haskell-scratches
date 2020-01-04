-- basic function declaration
square :: Int -> Int
square x = x * x

-- recursion
len :: [Int] -> Int
len [] = 0
len (x:xs) = 1 + len xs
len xs = foldr(\x -> (+) 1) 0 xs
-- list with recursion
getList :: Int -> [Int]
getList 0 = []
getList x = x:getList(x-1)  

-- if statement
maxi0 :: Int -> Int -> Int
maxi0 x y = if x>=y then x else y

-- better syntax for if
maxi1 :: (Int, Int) -> Int
maxi1 (x, y)    | x>=y = x
                | otherwise = y
-- quadratic
roots :: Float -> Float -> Float -> (Float, Float)
roots a b c =   ((-b-d)/e, (-b+d)/e)
                    where   d = sqrt(b*b -4*a*c)
                            e = 2*a

--wildcard
myAnd :: Bool -> Bool -> Bool
myAnd True y = y
myAnd _ _ = False

l3 :: [Int] -> Bool
l3 [x, y, z] = True
l3 _ = False

--parametric types
len2 :: [a] -> Int
len2 [] = 0
len2 xs = foldr(\x -> (+) 1) 0 xs

--custom types
data Color = Red | Yellow | Green deriving Show

tLight :: Color -> Color
tLight Red = Green
tLight Green = Yellow
tLight _ = Red

data MyBool = Sheep | Cow deriving Show

myAnd2 :: MyBool -> MyBool -> MyBool
myAnd2 Sheep y = y
myAnd2 _ _ = Cow

-- recursive lists
data List a = Nil | Cons a (List a) deriving Show

app :: List a -> List a -> List a
app Nil ys = ys
app (Cons x xs) ys = Cons x (app xs ys)

cLen :: List a -> Int
cLen Nil = 0
cLen (Cons x xs) = 1 + cLen xs