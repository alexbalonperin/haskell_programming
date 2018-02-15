module Ch5 where

  f1 :: a -> a -> a
  f1 a b = a

  f2 :: a -> a -> a
  f2 a b = b

  functionH :: [a] -> a
  functionH (x:_) = x

  functionC :: Ord a => a -> a -> Bool
  functionC x y = if (x > y) then True else False

  functionS :: (a, b) -> b
  functionS (x, y) = y

  myFunc :: (x -> y) 
         -> (y -> z)
         -> c
         -> (a, x)
         -> (a, z)
  myFunc xToY yToZ _ (a, x) = (a, yToZ $ xToY x)

  i :: a -> a
  i x = x

  c :: a -> b -> a
  c x y = x

  c'' :: b -> a -> b
  c'' x y = x

  c' :: a -> b -> b
  c' x y = y

  r :: [a] -> [a]
  r x = x

  co :: (b -> c) -> (a -> b) -> a -> c
  co f g a = f $ g a 

  a :: (a -> c) -> a -> a
  a _ x = x

  a' :: (a -> b) -> a -> b
  a' f x = f x

  fstString :: [Char] -> [Char]
  fstString x = x ++ " in the rain"

  sndString :: [Char] -> [Char]
  sndString x = x ++ " over the rainbow"

  sing = if(x < y) then fstString x else sndString y
    where x = "Singin"
          y = "Somewhere"

  f :: Int -> String
  f = undefined

  g :: String -> Char
  g = undefined 
  
  h :: Int -> Char
  h x = g $ f x

  munge :: (x -> y) -> (y -> (w , z)) -> x -> w
  munge f g x = fst $ g $ f x

