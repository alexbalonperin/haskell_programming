-- learn.hs

module Learn where

x = 10 * 5 + y

myResult = x * 5

y = 10

foo x = 
  let y = x * 2
      z = x ^ 2
  in 2 * y * z
              
multi = x * y
  where x = 10
        y = 20


t = x * 3 + y
  where x = 3
        y = 1000

v = x * 5
  where x = 10 * 5 + y
        y = 10

triple x = x * 3

waxOn = x * 5
  where x = y ^ 2
        y = z + 8
        z = 7


