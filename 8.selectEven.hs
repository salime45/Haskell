module SelectEven where

selectEven :: [Int] -> [Int]

selectEven [] = []
selectEven (x:xs) 
	| x`mod`2 == 0 = x:selectEven xs
	|otherwise = selectEven xs