module CountProperty where

data Tree a = Branch a (Tree a) (Tree a) | Void deriving Show

countProperty :: (a -> Bool) -> (Tree a) -> Int

countProperty f Void = 0
countProperty f ( Branch y izq der) 
	| f y = 1 + (countProperty f izq) + (countProperty f der)
	|otherwise = (countProperty f izq) + (countProperty f der)
	
