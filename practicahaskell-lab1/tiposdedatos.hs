--Define un nuevo tipo de dato Persona que tenga dos campos: nombre y edad.
-data Persona = Persona {nombre :: String, edad :: Int} deriving (Show, Eq)

-- Crea una función que reciba una lista de personas y devuelva una lista con los nombres de las personas que sean mayores de edad.
mayoresDeEdad :: [Persona] -> [String]
mayoresDeEdad [] = []
mayoresDeEdad (x:xs) = if (edad x) >= 18 then [nombre x] ++ mayoresDeEdad xs else mayoresDeEdad xs
me x:xs =  if (edad >= 18) then [nombre x] ++ mayoresDeEdad xs else mayoresDeEdad xs
--Define un nuevo tipo de dato Arbol que pueda ser un nodo vacío o contener un valor de tipo a y dos subárboles.
data Arbol a = Vacio | Nodo a (Arbol a) (Arbol a) deriving (Show, Eq)

--Define una función sumarArbol que tome como entrada un Arbol de números y devuelva la suma de todos los valores contenidos en él.

sumarArbol :: Num a => Arbol a -> a
sumarArbol Vacio = 0
sumarArbol (Nodo actual izq der) = actual + sumarArbol izq + sumarArbol der