module ListToTree where

data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

listToTree :: [a] -> Tree a
treeToList :: Tree a -> [a]

listToTree [x] = Leaf x 
listToTree (x:xs) = Branch (Leaf x) (listToTree xs) 

treeToList (Leaf x) = [x]
treeToList (Branch a b) = (treeToList a) ++ (treeToList b)

