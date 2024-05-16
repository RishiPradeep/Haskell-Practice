prodRecurse::Int->Int->Int
prodRecurse a b
 | b==0 = 0
 | b==1 = a
 | otherwise = a+(prodRecurse a (b-1))

main = do
 putStr("Enter first number:")
 x <- readLn
 putStr("Enter second number:")
 y <- readLn
 putStrLn(show x++" * "++show y++" = "++show (prodRecurse x y))