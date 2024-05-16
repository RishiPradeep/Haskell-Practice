sumOfOdd::Integer->Integer
sumOfOdd n = sum [x|x<-[1,3..n]]

sumOfOddR::Integer->Integer->Integer
sumOfOddR n s 
 | n<=0 = s
 | mod n 2==0 = sumOfOddR (n-1) (s)
 | otherwise = sumOfOddR (n-2) (s+n)

main = do
 putStr("Enter the upper limit:")
 limit <- readLn
 putStrLn("Sum of odd numbers till "++show limit++": "++show (sumOfOdd limit))
 putStrLn("Recursive sum of odd numbers till "++show limit++": "++show (sumOfOddR limit 0))