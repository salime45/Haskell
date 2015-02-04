module ArbolSim where

data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

symmetric :: Tree a -> Tree a

symmetric (Leaf x) = Leaf x
symmetric (Branch a b) = Branch (symmetric a)  (symmetric b)