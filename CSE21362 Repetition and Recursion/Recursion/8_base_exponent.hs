baseexponent::Float->Int->Float
baseexponent x n
 | n==0 = 1
 | otherwise = x*(baseexponent x (n-1))

main = do
 putStr("Enter the base value:")
 x <- readLn
 putStr("Enter the exponent:")
 n <- readLn
 putStrLn(show x++" to the power "++show n++" is: "++show (baseexponent x n))