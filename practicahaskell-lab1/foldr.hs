foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ val_inic [] = val_inic
foldr f val_inic (x:xs) = f x (foldr f val_inic xs)

-- foldr (+) 0 [1,2,3,4,5]

--a toma un elem de la lista 
--b el valor acumulado
--b devuelve el nuevo valor acumulado

--b valor inicial del acumulador
--a lista de elementos a recorrer

--se aplica la función binaria (f) al primer elemento de la lista (x) y al resultado de aplicar la función a los demás elementos de la lista (foldr' f z xs).

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f z xs = foldr f z xs
--aplico la función f al primer elemento de la lista y al resultado de aplicar la función a los demás elementos de la lista
--ghci > foldrn (+) 0 [1,2,3,4,5]