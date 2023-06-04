
--foldl currificada
foldl :: (b -> a -> b) -> b -> [a] -> b
foldl f acum xs = foldr (flip f) acum (reverse xs)

--fold sin currificar
fold :: (a -> b -> b) -> b -> [a] -> b
fold f z [] = z
fold f z (x:xs) = f x (fold f z xs)