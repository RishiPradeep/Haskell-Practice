luhnDouble :: Int -> Int 
luhnDouble x 
    | (x*2) > 9 = (x*2) - 9
    | otherwise = (x*2)

luhn :: Int -> Int -> Int -> Int -> Bool 
luhn a b c d  = ((luhnDouble a) + (luhnDouble b) + (luhnDouble c) + (luhnDouble d)) `mod` 10 == 0 

main :: IO()
main = do 
    line1 <- getLine 
    let num1 = read line1 :: Int 
    line2 <- getLine 
    let num2 = read line2 :: Int 
    line3 <- getLine 
    let num3  = read line3 :: Int 
    line4 <- getLine 
    let num4 =  read line4 :: Int 

    let valid = luhn num4 num3 num2 num1 
    print(valid)