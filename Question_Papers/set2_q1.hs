fml :: [Int] -> Int -> Int -> Int
fml (x:xs) middle counter
    | middle == counter =  x
    | otherwise = fml xs middle (counter + 1)


checkLength :: Int -> Int
checkLength n 
    | odd n = (n+1) `div` 2
    | otherwise = n `div` 2

main :: IO ()
main = do
    print("Enter the list")
    list <- getLine 
    let a  = map read (words list) :: [Int]
    let middle = checkLength (length a)
    print("The list is " ++  show list)
    print("The first middle and last elements are " ++ show ((head a), (fml a middle 0), (last a)))
    
    