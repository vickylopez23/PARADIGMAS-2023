
-- Devuelve una lista de los nodos en recorrido preorden (raíz, izquierda, derecha)
-- preorden (Árbol)
preorden :: (Ord a) => Abb a -> [a]
preorden Vacio = []
preorden (Nodo actual izq der) = [actual] ++ preorden izq ++ preorden der

--inorden devuelve una lista de los nodos en recorrido inorden (izquierda, raíz, derecha)
inorden::(Ord a) => Abb a -> [a] 
inotden Vacio = [] 
inorden (Nodo actual izq der) = inorden izq ++ [actual] ++ inorden der

--postorden devuelve una lista de los nodos en recorrido postorden (izquierda, derecha, raíz)
postorden::(Ord a) => Abb a -> [a]
postorden Vacio = []
postorden (Nodo actual izq der) = postorden izq ++ postorden der ++ [actual]

-- Devuelve una lista de los nodos en recorrido por niveles
-- porNiveles (Árbol)

porNiveles :: (Ord a) => Abb a -> [a]
porNiveles Vacio = []
porNiveles (Nodo actual izq der) = [actual] ++ porNiveles izq ++ porNiveles der

--insertar nodo
insertar :: (Ord a) => a -> Abb a -> Abb a
insertar n Vacio = Nodo n Vacio Vacio
insertar n (Nodo actual izq der)
    | n == actual = Nodo actual izq der
    | n < actual = Nodo actual (insertar n izq) der
    | n > actual = Nodo actual izq (insertar n der)

--insertar nodo currifif
insertar2 :: (Ord a) => a -> Abb a -> Abb a
insertar2 n Vacio = Nodo n Vacio Vacio
insertar2 n (Nodo actual izq der) = Nodo actual (insertar2 n izq) (insertar2 n der)

--buscar nodo
buscar :: (Ord a) => a -> Abb a -> Bool
buscar n Vacio = False
buscar n (Nodo actual izq der)
    | n == actual = True
    | n < actual = buscar n izq
    | n > actual = buscar n der

--buscar nodo currifif
buscar2 :: (Ord a) => a -> Abb a -> Bool
buscar2 n Vacio = False
buscar2 n (Nodo actual izq der) = n == actual || buscar2 n izq || buscar2 n der

--eliminar nodo
eliminar :: (Ord a) => a -> Abb a -> Abb a
eliminar n Vacio = Vacio
eliminar n (Nodo actual izq der)
    | n == actual = eliminarNodo (Nodo actual izq der)
    | n < actual = Nodo actual (eliminar n izq) der
    | n > actual = Nodo actual izq (eliminar n der)

--eliminar nodo currifif
eliminar2 :: (Ord a) => a -> Abb a -> Abb a
eliminar2 n Vacio = Vacio
eliminar2 n (Nodo actual izq der) = if n == actual then eliminarNodo (Nodo actual izq der) else Nodo actual (eliminar2 n izq) (eliminar2 n der)

-- Crea un nuevo árbol a partir de una lista
-- crearDeLista (Lista de números)
crearDeLista :: (Ord a) => [a] -> Abb a
crearDeLista [] = Vacio
crearDeLista (x:xs) = insertar x (crearDeLista xs)
mapt :: (a -> b) -> Abb a -> Abb b
mapt _ Vacio = Vacio
--mapTree que aplique una función dada a cada elemento de un árbol.

mapTree :: (a -> b) -> Abb a -> Abb b
mapTree _ Vacio = Vacio
mapTree f (Nodo actual izq der) = Nodo (f actual) (mapTree f izq) (mapTree f der)

--Implementa una función foldTree que implemente el plegado de un árbol.
foldTree :: (a -> b -> b) -> b -> Abb a -> b
foldTree _ z Vacio = z
foldTree f z (Nodo actual izq der) = f actual (foldTree f (foldTree f z izq) der)



-- Devuelve el mínimo elemento de un árbol
-- minimo (Árbol)
minimo :: (Ord a) => Abb a -> a
minimo (Nodo actual Vacio _) = actual
minimo (Nodo actual izq der) = minimo izq

min :: ord a -=> abb a -> a 
min (nodo act vacio _ ) =actual
min (nodo act izq der) = minimo izq

--arbolbinario
data ArbolBinario a = Vacio | Nodo a (ArbolBinario a) (ArbolBinario a) deriving (Show, Eq)

ArbolBinario :: (Ord a) => [a] -> ArbolBinario a
ArbolBinario [] = Vacio
ArbolBinario (x:xs) = Nodo x (ArbolBinario (filter (<x) xs)) (ArbolBinario (filter (>x) xs))
