printodd :: [Int] -> [Int]
printodd [] = []
printodd (x:xs)
    | odd x = x : printodd xs 
    | otherwise = printodd xs 

main :: IO()
main = do 
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("The odd numbers are " ++ show (printodd list))