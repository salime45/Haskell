module Divisors where

divisors :: Int -> [Int]

divisors n 	= [x| x<- [1..n], n`mod`x ==0]
