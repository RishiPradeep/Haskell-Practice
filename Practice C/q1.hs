-- ALL QUESTIONS FUNCTIONS

findmax :: Int -> Int -> Int 
findmax a b
    | a > b = a
    | otherwise = b

findmin :: Int -> Int -> Int 
findmin a b 
    | a > b = b 
    | otherwise = a 

biggestofthree :: Int -> Int -> Int -> Int
biggestofthree a b c
    | a > b && a > c = a
    | b > a && b > c = b 
    | otherwise = c

checkEvenOrOdd :: Int -> String
checkEvenOrOdd x 
    | x `mod` 2 == 0 = "Even"
    | otherwise = "Odd"




-- ALL QUESTIONS MODULES

getmax :: IO()
getmax = do 
    putStrLn("Enter the numbers seperated by spaces")
    line <- getLine
    let nos =  map read (words line) :: [Int]
    let answer = findmax (nos !! 0) (nos !! 1)
    putStrLn(show(answer))

getmin :: IO()
getmin = do 
    putStrLn("Enter the numbers seperated by spaces")
    line <- getLine
    let nos =  map read (words line) :: [Int]
    let answer = findmin (nos !! 0) (nos !! 1)
    putStrLn(show(answer))

bigThree :: IO()
bigThree = do 
    putStrLn("Enter the numbers seperated by spaces")
    line <- getLine
    let nos =  map read (words line) :: [Int]
    let answer = biggestofthree (nos !! 0) (nos !! 1) (nos !! 2)
    putStrLn(show(answer))

checkevenorodd :: IO()
checkevenorodd = do 
    putStrLn("Enter the number")
    line <- getLine 
    let number = read line :: Int 
    print("Number is " ++ checkEvenOrOdd number)



