luhnDouble :: [Int] -> [Int]
luhnDouble [] = []
luhnDouble (x:xs) 
    | (x*2) > 9 = (x - 9) : luhnDouble xs
    | otherwise = (x*2) : luhnDouble xs

checkValid :: [Int] -> Bool 
checkValid xs
    | ans `mod` 10 == 0 = True 
    | otherwise = False 
    where ans = (luhnDouble ([tail xs])) + (luhnDouble ([x*2 | x <- (init xs)]))


altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap fa fb [x] = [(fa x)]
altMap fa fb (x:y:xs) = fa x : fb y : altMap fa fb xs

