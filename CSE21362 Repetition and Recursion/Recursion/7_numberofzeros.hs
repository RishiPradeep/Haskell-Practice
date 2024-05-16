numberofzeros::Int->Int
numberofzeros n
 | n<0 = error "Not a non-negative number."
 | n==0 = 0
 | otherwise = if (mod n 10)==0 then 1+numberofzeros (n `div` 10) else numberofzeros (n `div` 10)

main = do
 putStr("Enter a number:")
 x <- readLn
 putStrLn("The number of trailing zeros in the given number are: "++show (numberofzeros x))