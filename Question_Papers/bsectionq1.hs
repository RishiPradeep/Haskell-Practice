


sss :: (Num a, Eq a) => [a] -> [a]
sss (x:xs) 
 | (((x+1) `elem` xs) == ((x+2) `elem` xs))  = [x,x+1,x+2]
 | otherwise = sss xs 

rishi :: [Int] -> Int -> [Int]
rishi xs 0 = []
rishi xs l
 | l `elem` xs = rishi xs (l-1) 
 | otherwise = l : rishi xs (l-1)

missing :: [Int] ->Int -> Int -> Int
missing (x:[]) c m = 0
missing (x:xs) minn maxx
    | x `elem` [minn..maxx] = missing xs minn maxx
    | otherwise = x

mm :: [Int] -> Int
mm xs = do 
 missing xs (min xs) (max xs)