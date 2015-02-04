module Repeated where

repeated :: Int-> [Int] -> Int

repeated _ [] = 0
repeated a (x:xs)
	| a==x = 1 + repeated a xs
	|otherwise = repeated a xs