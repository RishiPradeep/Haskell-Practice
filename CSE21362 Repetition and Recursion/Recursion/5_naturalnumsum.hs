naturalnumsum::Int->Int
naturalnumsum n 
 | n<=0 = error "Not a natural number."
 | n==1 = 1
 | otherwise = n+naturalnumsum (n-1)

main = do
 putStr("Enter a number:")
 x <- readLn
 putStrLn("Sum of "++show x++" natural numbers is: "++show (naturalnumsum x))