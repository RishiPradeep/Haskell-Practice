rev :: Int -> Int -> Int
rev x curr
    | x <= 9 = (curr * 10) + x
    | otherwise = (x*10) + (x`mod`10)

main :: IO()
main = do 
    print("Enter the number")
    line <- getLine 
    let number = read line :: Int 
    let ans = rev number
    if ans == number 
    then do 
        print("It is a palindrome")
    else 
        print("It is not a palindrome" ++ show(ans))