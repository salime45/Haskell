module Member where

member :: Int -> [Int] -> Bool

member _ [] = False
member a (x:xs)
	| a==x = True
	|otherwise = member a xs
	
	