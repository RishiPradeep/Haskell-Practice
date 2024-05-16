sumOfEven::Integer->Integer
sumOfEven n = sum [x|x<-[2,4..n]]

sumOfEvenR::Integer->Integer->Integer
sumOfEvenR n s 
 | n<=0 = s
 | mod n 2==0 = sumOfEvenR (n-2) (s+n)
 | otherwise = sumOfEvenR (n-1) s

main = do
 putStr("Enter the upper limit:")
 limit <- readLn
 putStrLn("Sum of even numbers till "++show limit++": "++show (sumOfEven limit))
 putStrLn("Recursive sum of even numbers till "++show limit++": "++show (sumOfEvenR limit 0))