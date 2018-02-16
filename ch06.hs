module Ch06 where

  data Trivial = Trivial' | Cool' | Special'

  data DayOfWeek =
    Mon | Tue | Wed | Thu | Fri | Sat | Sun
    deriving (Ord, Show)

  instance Eq DayOfWeek where
   (==) Mon Mon = True
   (==) Tue Tue = True
   (==) Wed Wed = True
   (==) Thu Thu = True
   (==) Fri Fri = True
   (==) Sat Sat = True
   (==) Sun Sun = True
   (==) _ _ = False

  instance Show Trivial where
    show Trivial' = "Trivial"
    show Cool' = "Cool"
    show Special' = "Special"

  data TisAnInteger =
    TisAn Integer

  instance Eq TisAnInteger where
    (==) (TisAn a) (TisAn b) = a == b

  data TwoIntegers =
    Two Integer Integer

  instance Eq TwoIntegers where
    (==) (Two a b) (Two c d) = a == c && b == d

  data StringOrInt = 
    TisAnInt Int
    | TisAString String

  instance Eq StringOrInt where
    (==) (TisAnInt a) (TisAnInt b) = a == b
    (==) (TisAString a) (TisAString b) = a == b
    (==) _ _ = False

  data Pair a =
    Pair a a

  instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair a' b') = a == a' && b == b'

  data Tuple a b =
    Tuple a b

  instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

  data Which a = ThisOne a | ThatOne a

  instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne b) = a == b
    (==) (ThatOne a) (ThatOne b) = a == b
    (==) _ _ = False

  data EitherOr a b = Hello a | Goodbye b

  instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello b) = a == b
    (==) (Goodbye a) (Goodbye b) = a == b
    (==) _ _ = False

  data Rocks =
    Rocks String deriving (Eq, Show)

  data Yeah =
    Yeah Bool deriving (Eq, Show)

  data Papu =
    Papu Rocks Yeah deriving (Eq, Show)

  i :: Num a => a
  i = 1

  f :: Fractional a => a
  f = 1.0

  g :: RealFrac a => a
  g = 1.0

  freud :: Ord a => a -> a
  freud x = x

  freud' :: Int -> Int
  freud' x = x

  chk :: Eq b => (a -> b) -> a -> b -> Bool
  chk f1 a b = f1 a == b

  arith :: Num b => (a -> b) -> Integer -> a -> b
  arith f2 int a = f2 a + fromInteger int

