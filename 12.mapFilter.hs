module MapFilter where

map' :: (a -> b) -> [a] -> [b]
filter' :: (a -> Bool) -> [a] -> [a]

-- map f [] = []
-- map f (x:xs) = f x : map f xs

-- filter p [] = []
-- filter p (x:xs) = if p x then x:filter p xs 
-- 					 else filter p xs

map' f xs = [f y | y <- xs]

filter' p xs = [y | y <- xs, p y]