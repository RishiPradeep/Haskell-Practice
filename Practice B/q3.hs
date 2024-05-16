displayDuplicates :: [Int] -> [Int]
displayDuplicates [] = []
displayDuplicates (x:xs)
    | x `elem` xs = x : displayDuplicates xs
    | otherwise = displayDuplicates xs

main :: IO()
main = do 
    line <- getLine
    let list = map read (words line) :: [Int]
    putStrLn("The duplicate elements are " ++  show (displayDuplicates list))