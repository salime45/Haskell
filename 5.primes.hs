module Primes where

isPrime :: Int -> Bool
primes :: Int -> [Int]

isPrime n = length [x | x<- [1..n], n `mod` x == 0] <= 2

primes n = take n [x | x <- [1..], isPrime x]