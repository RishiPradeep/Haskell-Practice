oddIndex :: [Int] -> Int 
oddIndex [] = 0
oddIndex xs = sum([ xs !! a | a <- [1,3..b]]) where b = (length xs) - 1


main :: IO()
main = do 
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("The sum of numbers at odd indices is " ++ show(oddIndex list)) 