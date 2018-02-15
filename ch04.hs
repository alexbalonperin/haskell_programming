module Ch4 where

  f :: (a,b) -> (c,d) -> ((b,d),(a,c))
  f (a, b) (c, d) = ((b,d),(a,c))

  f2 :: (a,b) -> (c,d) -> ((b,d),(a,c))
  f2 x y = ((snd x, snd y),(fst x, fst y))

  x = (+)
  f3 xs = w `x` 1
    where w = length xs 

  myId x = x

