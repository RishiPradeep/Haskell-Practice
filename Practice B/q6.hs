printEvenSum :: [Int] -> Int 
printEvenSum [] = 0
printEvenSum (x:xs)
    | even x = x + printEvenSum(xs)
    | otherwise = printEvenSum(xs)
main :: IO()
main = do 
    line <- getLine 
    let list = map read (words line) :: [Int]
    putStrLn("The sum of even numbers is " ++ show(printEvenSum list)) 




