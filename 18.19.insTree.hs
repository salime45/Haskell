module InsTree where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

-- Ejercicio 18

insTree :: Int -> BinTreeInt -> BinTreeInt

insTree x Void = (Node x Void Void)
insTree x (Node y izq der) = if y > x then (Node y (insTree x izq) der) 
						     else (Node y izq (insTree x der))
							 
							
-- Ejercicio 19

creaTree :: [Int] -> BinTreeInt

creaTree [] = Void
creaTree (x:xs) = insTree x (creaTree xs) 
						 
  