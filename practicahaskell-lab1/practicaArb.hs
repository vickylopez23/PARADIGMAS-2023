-- Int que dado un  ́arbol devuelve la cantidad de datos almacenados.
long ::Arbol a -> int 
long Vacio = 0
long (Nodo x izq der) = 1 + long izq + long der

--que dado un  ́arbol devuelve la cantidad de hojas.
cant :: Arbol a -> Int 
cant Vacio = 0
cant (Nodo x izq der)= Nodo ((cant x) (a+1) (cant c))

--que dada una funci ́on y un  ́arbol,
--devuele el  ́arbol con la misma estructura, que resulta de aplicar la funci ́on a cada uno
--de los elementos del  ́arbol. Revis ́a la definci ́on de la funci ́on anterior y reprogramala usando a_map.

a_map :: (a -> b) -> Arbol a -> Arbol b
a_map _ Vacio = 0
a_map n (Nodo x izq der) = (Nodo (a_map n x) (n izq) (a_map n c))

cant_ :: Num a => Arbol a -> Arbol a 
cant_  n = a_map (+1) n


