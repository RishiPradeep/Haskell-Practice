choice1 :: String -> Int -> Int
choice1 [] count = count
choice1 (x:xs) count = choice1 xs (count + 1)

choice2 :: String -> String -> String 
choice2 a b = a ++ b

choice3 :: String -> String 
choice3 [] = []
choice3 xs = [last(xs)] ++ choice3 (init(xs))

choice4 :: String -> String -> Bool 
choice4 xs xy
    | xs == xy = True 
    | otherwise = False



main :: IO ()
main = do 
    print("Enter your option")
    print("1 : Find the length of a string")
    print("2 : Join two Strings")
    print("3 : Reverse a string")
    print("4 : Compare 2 strings")
    line <- getLine 
    let choice =  read line :: Int 
    if choice == 1
    then do        
        print("Enter the string")
        line1 <- getLine 
        let ans1 = choice1 line1 0
        print("Length is " ++  show(ans1))

    else if choice == 2
    then do
        print("Enter the first string")
        line2 <- getLine
        print("Enter the second string")
        line3 <- getLine 
        let ans2 = choice2 line2 line3
        print ("The combined string is " ++ show(ans2))
    
    else if choice == 3
    then do
        print("Enter the string")
        line4 <- getLine 
        let ans3 =  choice3 line4
        print("The reverse is " ++ show (ans3))
    
    else if choice  == 4
    then do
        print("Enter the first string")
        line5 <- getLine
        print("Enter the second string")
        line6 <- getLine 
        let ans4 = choice4 line5 line6
        if ans4
        then do
            print("They are equal")
        else 
            print("They are not equal")
    
    else 
        print("Invalid Option")

        