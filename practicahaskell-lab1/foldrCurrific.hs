foldrn :: (a -> b -> b) -> b -> [a] -> b
foldrn f z xs = foldrn f z xs
--ghci > foldrn (+) 0 [1,2,3,4,5]