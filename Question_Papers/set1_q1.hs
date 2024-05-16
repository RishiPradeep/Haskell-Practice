twoSame :: [Int] -> Bool 
twoSame [] = False 
twoSame (x:xs)
    | x `elem` xs = True 
    | otherwise = twoSame xs