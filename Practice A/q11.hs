sumofdigits :: Int -> Int
sumofdigits x
    | x < 10 = x
    | otherwise = (x `mod` 10) + sumofdigits (x `div` 10)
main :: IO ()
main = do 
    x <- getLine 
    let a = read x :: Int 
    putStrLn("Sum of " ++ show (a) ++ " is " ++ show (sumofdigits a))