digitsumR::Int->Int
digitsumR n
 | n<0 = error "Not a non-negative number."
 | n==0 = 0
 | otherwise = (mod n 10)+digitsumR (n `div` 10)

main = do
 putStr("Enter a number:")
 x <- readLn
 putStrLn("Sum of the digits of the given number is: "++ show (digitsumR x))