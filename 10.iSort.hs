module ISort where


iSort :: [Int] -> [Int]
ins :: Int -> [Int] -> [Int]

ins a [] = [a]
ins a (x:xs) 
	|a>x = x: ins a xs
	|otherwise = a:x:xs
	
iSort [] = []
iSort (x:xs) = ins x (iSort xs)