findSmallest :: [Int] -> Int 
findSmallest [] = 0
findSmallest xs = minimum xs


main :: IO()
main = do 
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("The smallest element is " ++ show(findSmallest list)) 