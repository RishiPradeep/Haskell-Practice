number :: String -> Int -> Int -> Int -> [Int]
number [] a b c = [a,b,c]
number (x:xs) vow num const
    | elem x "aeiouAEIOU" = number xs (vow+1) num const
    | x >= '0' && x <= '9' = number xs vow (num + 1) const 
    | otherwise = number xs vow num (const + 1)

main :: IO()
main = do 
    print("Enter the string")
    line <- getLine 
    let answer = number line 0 0 0 
    print("Number of vowels " ++ show (answer !! 0))
    print("Number of Numbers " ++ show (answer !! 1))
    print("Number of constonants " ++ show (answer !! 2))