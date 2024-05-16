checkPalindrome :: String -> Bool 
checkPalindrome [] = False 
checkPalindrome [x] = True 
checkPalindrome (x:xs)
    | x == last(xs) = checkPalindrome (init xs)
    | otherwise = False

main :: IO ()
main = do 
    print("Enter the string")
    line <- getLine 
    if checkPalindrome line 
    then 
        print("It is a palindrome")
    else
        print("It is not a palindrome")
