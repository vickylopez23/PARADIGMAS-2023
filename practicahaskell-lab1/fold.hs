--suma de una lista de enteros
sumList :: [Int] -> Int
sumList xs = foldr (+) 0 xs

--Calcula la longitud de una lista usando foldr.
length' :: [a] -> Int
length' xs = foldr (\_ n -> 1 + n) 0 xs

--Concatena una lista de cadenas usando foldr.
concat' :: [[a]] -> [a]
concat' xs = foldr (++) [] xs

--Devuelve el reverso de una lista usando foldr.
reverse' :: [a] -> [a]
reverse' xs = foldr (\x xs -> xs ++ [x]) [] xs

--Encuentra el máximo elemento de una lista de enteros usando foldr1
maxList :: [Int] -> Int
maxList xs = foldr1 (\x y -> if x > y then x else y) xs
