data Arbol a = Vacio | Nodo a (Arbol a) (Arbol a) deriving (Eq,Show)

preorden ::ord a ->arbol a -> [a]
preorden vacio [ ] = []
preorden (nodo a i d) = [act ] + preoden izq  +preoden der

--minimo de un arbol
minimo :: (Ord a) => Arbol a -> a
minimo (Nodo actual Vacio _) = actual
minimo (Nodo actual izq der) = minimo izq

data arbol a = vacio |nodo a (arbola)
sumarAr :: Arbol Int -> Int -> Arbol Int
sumarAr Vacio n = Vacio
sumarAr (Nodo x izq der) n = Nodo (x+n) (sumarAr izq n) (sumarAr der n)
--ghci > sumarAr (Nodo 2 (Nodo 3 Vacio Vacio) (Nodo 4 Vacio Vacio)) 1

mapt :: (a->b) -> Arbol a -> Arbol b
mapt _ Vacio = Vacio
mapt f (Nodo x izq der) = Nodo (f x) (mapt f izq) (mapt f der)

foldTree :: (a -> b -> b) -> b -> Arbol a -> b
foldTree _ z Vacio = z
foldTree f z (Nodo actual izq der) = f actual (foldTree f (foldTree f z izq) der)



sumarAr :: arbol int -<int ->arbol int
sumarAr Vacio  n = Vacio
sumarAr  (nodo act izq der) n  = Nodo (n + actual) (sumarar  izq n ) (sumarAr der n )



mapar : (a->b) -> Arbol a -> Arbol b
mapear f vacio = vacio
mapear f (nodo act izq der ) = Nodo (f act ) (map act iz1q) (map aact der )

foldt :: (a->b->b)->b ->arbol a -> b
foldt f n Vacio = n 
foldt f n (Nodo ac iz de ) = f act (foldt f (foldt f n izq ) der)
