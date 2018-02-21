module Chapter7 where
  newtype Username = Username String
  newtype AccountNumber = AccountNumber Integer
  data User =
      UnregisteredUser
    | RegisteredUser Username AccountNumber

  printUser :: User -> IO ()
  printUser UnregisteredUser = putStrLn "UnregisteredUser"
  printUser (RegisteredUser (Username name) (AccountNumber acctNum)) =
    putStrLn $ name ++ " " ++ show acctNum

  f1 :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
  f1 (a, _, c) (d, _, f) = ((a, d), (c, f))  

  --functionC x y = if(x > y) then x else y
  functionC :: Ord x => x -> x -> x
  functionC x y =
    case x > y of 
      True -> x
      False -> y
      
  --ifEvenAdd2 n = if even n then (n+2) else n
  ifEvenAdd2 :: Integral a => a -> a
  ifEvenAdd2 n =
    case even n of
      True -> (n+2)
      False -> n

  nums :: (Ord a, Num a, Num b) => a -> b
  nums x =
    case compare x 0 of
      LT -> -1
      GT -> 1
      EQ -> 0

  tensDigit :: Integral a => a -> a
  tensDigit x = d
    where (xLast, _) = divMod x 10
          (_, d) = divMod xLast 10

  hunsD :: Integral a => a -> a
  hunsD x = d
    where (xLast, _) = divMod x 100
          (_, d) = divMod xLast 100

  hunsD1 :: Integral a => a -> a
  hunsD1 x = (tensDigit x) `div` 10

  foldBool :: a -> a -> Bool -> a
  foldBool x y b =
    case b of
      True  -> x
      False -> y

  foldBool2 :: a -> a -> Bool -> a
  foldBool2 x y b
    | b = x
    | otherwise = y

  g :: (a -> b) -> (a, c) -> (b, c)
  g f (a, c) = (f a, c)

  roundTrip :: (Show a, Read a) => a -> a
  roundTrip a = read (show a)

  roundTripPF :: (Show a, Read a) => a -> a
  roundTripPF = read . show

  roundTripPF2 :: (Show a, Read b) => a -> b
  roundTripPF2 = read . show
