factors::Integer->Int
factors n = length [1 | i<-[2..round (sqrt (fromIntegral n))], mod n i==0]

isPrime::Integer->Bool
isPrime n 
 | n==0 = False
 | n==1 = False
 | f==0 = True
 | otherwise = False
 where f = (factors n) 

isPrimeRecurs::Integer->Bool
isPrimeRecurs n 
 | n<=1 = False
 | otherwise = helper 2
 where 
 helper i
  | i*i>n = True
  | mod n i == 0 = False
  | otherwise = helper (i+1)

primeNums l u 
 | l>=u = []
 | otherwise = if (isPrimeRecurs l)==True then [l]++(primeNums (l+1) u) else (primeNums (l+1) u)

main = do
 putStr("Enter lower limit:")
 l <- readLn
 putStr("Enter upper limit:")
 u <- readLn
 putStrLn("Prime numbers between "++show l++" and "++show u++": "++show (primeNums (l+1) (u)))