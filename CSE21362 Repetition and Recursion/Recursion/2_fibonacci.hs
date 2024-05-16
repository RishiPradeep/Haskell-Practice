fibonacciSeries::Int->[Int]
fibonacciSeries n 
 | n<=0 = []
 | otherwise = fibonacciSeries (n-1)++[nthfinbonacci n]

nthfinbonacci::Int->Int
nthfinbonacci n 
 | n<=0 = error "Error. Value should be greater than or equal to 1."
 | n==1 = 0
 | n==2 = 1
 | otherwise = nthfinbonacci(n-1)+nthfinbonacci(n-2)

main = do
 putStr("Enter a number:")
 num <- readLn
 putStrLn(show num++"th fibonacci number is: "++show (nthfinbonacci num))
 putStrLn("The "++show num++" fibonacci numbers are: "++show (fibonacciSeries num))
