data Arbol a = Vacio | Nodo a (Arbol a) (Arbol a) deriving (Eq,Show)

sumarArbol :: Num a => a -> Arbol a -> Arbol a
sumarArbol n = foldArbol (Vacio) (\valor izq der -> Nodo (valor + n) izq der)


sumar arbol :: NUM A => a -> arbol a -> arbol a 
sumar arbol n = foldArbol 