module TreeElem where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

treeElem :: Int -> BinTreeInt -> Bool

treeElem _ Void = False 
treeElem x (Node y izq der) 
  |x==y = True 
  |x<y = treeElem x izq 
  |otherwise = treeElem x der