--Dada una lista de números, retorna una lista con los números elevados al cuadrado:
mapcuadrado :: [Int] -> [Int]
mapcuadrado xs = map (\x -> x*x) xs

squareList :: [Int] -> [Int]
squareList xs = map (^2) xs

--Dada una lista de cadenas, retorna una lista con las longitudes de cada cadena:
maplength :: [String] -> [Int]
maplength xs = map (\x -> length x) xs

lengthList :: [String] -> [Int]
lengthList xs = map length xs
