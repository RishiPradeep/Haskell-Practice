findSum :: Int -> Int -> Int
findSum x y = x + y 

findDiff :: Int -> Int -> Int 
findDiff x y = x - y 

findProd :: Num a => a -> a -> a 
findProd x y = x * y 

findQuo :: Fractional a => a -> a -> a 
findQuo x y = x / y 

findRem :: Int -> Int -> Int 
findRem x y = x `mod` y 

main :: IO ()
main = do 
    a <- getLine 
    b <- getLine 
    let x = read a :: Int 
    let y = read b :: Int  
    putStrLn ("Sum is" ++ show (findSum x y))
    putStrLn ("Difference is" ++ show (findDiff x y))
    putStrLn ("Product is" ++ show (findProd x y))
    putStrLn ("Quotient is " ++ show (findQuo (fromIntegral x) (fromIntegral y)))
    putStrLn ("Remainder is" ++  show (findRem x y))