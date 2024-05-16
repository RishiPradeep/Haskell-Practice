findodd :: [Int] -> Int 
findodd [] = 0
findodd (x:xs) 
    | odd( length ( [a | a <- xs , a == x ] )) = x 
    | otherwise = findodd xs 

main :: IO()
main = do 
    putStrLn("Enter the numbers seperated by space")
    line <- getLine 
    let mylist = map read (words line) :: [Int] 
    putStrLn("The number that occurs odd number of times is" ++ show (findodd mylist))
