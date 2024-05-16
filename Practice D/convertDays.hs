convert :: Int -> [Int] -> [Int]
convert 0 [a,b,c]  = [a,b,c]
convert a [y,m,d]
    | a >= 365 = convert (a-365) ([y+1,m,d])
    | a >= 30 = convert (a-30) ([y,m+1,d])
    | otherwise = convert 0 ([y,m,d+a])

main :: IO()
main = do 
    print("Enter the number of days")
    line <- getLine 
    let days = read line :: Int 
    let ans = convert days [0,0,0]
    print(show(ans !! 0) ++ " Years " ++ show(ans !! 1) ++ " Months " ++ show(ans !! 2) ++ " Days ")