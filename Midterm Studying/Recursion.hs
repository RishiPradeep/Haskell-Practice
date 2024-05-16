-- Recursion in haskell 

-- Replicate Function 

replicate' :: Int -> Int -> [Int]
replicate' x 0 = []
replicate' x y = [x] ++ replicate' x (y-1)

-- Take Function 

take' :: Int -> [a] -> [a]
take' 0 (x:xs) = []
take' n (x:xs) = x : take' (n-1) xs

-- Elem function 

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False 
elem' a (x:xs)
    | a == x = True 
    | otherwise = elem' a xs

-- QuickSort 

qs :: (Ord a) => [a] -> [a]
qs [] = []
qs (x:xs) = 
    smaller ++ [x] ++ bigger 
    where 
        smaller = qs [a | a <- xs , a <= x]
        bigger = qs [a | a<- xs, a > x]

main :: IO ()
main = do 
    print("Replicate 3 5 is" ++ show(replicate' 3 5))
    print("Take 3 [5,4,3,2,1] is " ++ show(take' 3 [5,4,3,2,1]))
    print("Elem' 7 [1,2,3,4,5] is " ++ show(elem' 7 [1,2,3,4,5]))
    print("Quicksort [2,5,4,2,1,45] is " ++ show(qs [2,5,4,2,1,45]))