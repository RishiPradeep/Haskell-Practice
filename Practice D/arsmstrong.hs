arm :: String -> Int 
arm [] = 0 
arm (x:xs) = ((read [x] :: Int) ^ 3) + arm(xs)

main :: IO()
main = do 
    print("Enter the number")
    line <- getLine 
    let answer = arm line 
    let number = read line :: Int 
    if number == answer 
    then 
        print("It is an armstrong number")
    else 
        print("It is not an armstrong number")