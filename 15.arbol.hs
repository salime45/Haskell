module Arbol where

data Tree a = Leaf a | Branch (Tree a) (Tree a)

numleaves (Leaf x) = 1
numleaves (Branch a b) = numleaves a + numleaves b