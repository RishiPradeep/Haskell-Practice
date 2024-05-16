allDivCount::Int->Int->Int->Int
allDivCount l u d
 | l>=u = 0
 | otherwise = if (mod l d)==0 then 1+(allDivCount (l+1) u d) else (allDivCount (l+1) u d)

allDivVal::Int->Int->Int->[Int]
allDivVal l u d
 | l>=u = []
 | otherwise = if (mod l d)==0 then [l]++(allDivVal (l+1) u d) else (allDivVal (l+1) u d)

allDivSum::Int->Int->Int->Int
allDivSum l u d
 | l>=u = 0
 | otherwise = if (mod l d)==0 then l+(allDivSum (l+1) u d) else (allDivSum (l+1) u d)

main = do
 putStr("Enter lower limit:")
 l <- readLn
 putStr("Enter upper limit:")
 u <- readLn
 putStr("Enter a number (whose multiple the numbers should be):")
 y <- getLine
 let m = read y::Int
 putStrLn("Count of the numbers between "++show l++" and "++show u++" divisible by "++y++" are: "++show (allDivCount (l+1) (u) m))
 putStrLn("The numbers between "++show l++" and "++show u++" divisible by "++y++" are: "++show (allDivVal (l+1) (u) m))
 putStrLn("Sum of the numbers between "++show l++" and "++show u++" divisible by "++y++" are: "++show (allDivSum (l+1) (u) m))


 