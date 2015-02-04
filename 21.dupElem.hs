module DupElem where

data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show

dupElem :: BinTreeInt -> BinTreeInt
dupElem (Node y izq der) = Node (y*2) (dupElem izq) (dupElem der)