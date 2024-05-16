productz :: [Int] -> Int 
productz [] = 0
productz (x:xs) = x * (product xs)

main :: IO()
main = do 
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("The product of the list is " ++ show(productz list))