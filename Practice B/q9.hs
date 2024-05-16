search :: [Int] -> Int -> Int -> (Bool,Int)
search [] _ _ = (False,-1)
search (x:xs) num index
    | x == num = (True,index)
    | otherwise = search xs num (index+1)


main :: IO()
main = do 
    putStrLn("Enter the list")
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("Enter the number to search for")
    number <- getLine 
    let num =  read number :: Int
    let numberFound = search list num 0
    if fst(numberFound)
    then
        putStrLn("The number was found in the list at index " ++ show(snd(numberFound)))
    else 
        putStrLn("The number was not found in the list")