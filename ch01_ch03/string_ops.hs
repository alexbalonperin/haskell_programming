module StringOps where

a x = x ++ "!"

b x = take 1 $ drop 4 x

c x = drop 9 x

d :: String -> Char
d x = x !! 2

e :: Int -> Char
e x = "Curry is awesome!" !! x

