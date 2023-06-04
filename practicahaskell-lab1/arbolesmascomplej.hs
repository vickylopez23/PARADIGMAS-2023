data Arbol a = Hoja | Rama (Arbol a) a (Arbol a) deriving (Eq,Show)
type Prefijos = Arbol String

-- Int que dado un  ́arbol devuelve la cantidad de datos almacenados.
a_long :: Arbol a -> Int 
a_long Hoja = 0
a_long (Rama a b c) = 1 + a_long a + a_long c

--que dado un  ́arbol devuelve la cantidad de hojas.
a_hojas :: Arbol a -> Int
a_hojas Hoja = 1
a_hojas (Rama a b c) = (a_hojas a) + (a_hojas c)

--a que dado un  ́arbol que contiene n ́umeros,los incrementa en uno.
a_inc :: Num a => Arbol a -> Arbol a 
a_inc Hoja = Hoja
a_inc (Rama a b c) = (Rama (a_inc a) (b+1) (a_inc c))

inc ::Num a => arbol a -> arbol a
inc f =f
inc (nodo a i d ) = nodo (inc ac ) (izq +1 ) (inc c )


    --que dada una funci ́on y un  ́arbol,
--devuele el  ́arbol con la misma estructura, que resulta de aplicar la funci ́on a cada uno
--de los elementos del  ́arbol. Revis ́a la definci ́on de la funci ́on anterior y reprogramala usando a_map.
a_map :: (a -> b) -> Arbol a -> Arbol b
a_map _ Hoja = Hoja
a_map n (Rama a b c) = (Rama (a_map n a) (n b) (a_map n c))

a_inc' :: Num a => Arbol a -> Arbol a 
a_inc' n = a_map (+1) n

