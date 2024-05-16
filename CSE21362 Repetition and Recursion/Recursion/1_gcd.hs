gcdr::Int->Int->Int
gcdr a b
 | b==0 = a
 | otherwise = gcdr (b) (mod a b)

main = do
 putStr("Enter first number:")
 num1 <- readLn
 putStr("Enter second number:")
 num2 <- readLn
 putStrLn("GCD of "++show num1++" and "++show num2++": "++show (gcdr num1 num2))