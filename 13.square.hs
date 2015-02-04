module Square where

square :: Int -> Int
myfun :: [Int] -> Int

square a = a*a

myfun xs = sum (map square(filter even xs))