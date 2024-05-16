sumOfCubes::Integer->Integer
sumOfCubes 0 = 0
sumOfCubes n = (mod n 10)^3 + sumOfCubes (n `div` 10)

isArmstrong::Integer->Bool
isArmstrong n 
 | n == sumOfCubes n = True
 | otherwise = False

isArmstrongRecurs n = n==helper n 
 where
 helper n 
  | n==0 = 0
  | otherwise = (mod n 10)^3 + helper (n `div` 10)

main = do
 putStr("Enter a number:")
 num <- readLn
 putStrLn("Is Armstrong? "++show (isArmstrong num))
 putStrLn("Is Armstrong? (Recursive) "++show (isArmstrongRecurs num))