-- Zips together two lists in Haskell.
zip' :: [a] -> [b] -> [(a, b)]
zip' xs     []     = []
zip' []     ys     = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

-- Example usages:
-- zip' "ABCDE" [1,2,3]   …yields…  [('A',1),('B',2),('C',3)]
-- zip' "AB" [1,2,3,4,5]  …yields…  [('A',1),('B',2)]
-- zip' "ABC" []          …yields…  []
