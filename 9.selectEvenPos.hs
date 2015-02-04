module SelectEvenPos where

selectEvenPos :: [Int] -> [Int]

selectEvenPos [] = []
selectEvenPos (x:[]) = [x]
selectEvenPos (x:y:xs) = x:selectEvenPos xs

