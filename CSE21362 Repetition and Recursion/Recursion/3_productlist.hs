getinput::Int->IO [Float]
getinput 0 = return []
getinput n = do
 x<-readLn
 xs<-getinput (n-1)
 return (x:xs)

prod::[Float]->Float
prod [] = 1
prod (x:xs) = x*prod xs

main = do
 putStr("Enter n:")
 x <- getLine
 let n= read x::Int
 putStrLn("Enter the numbers:")
 l <- getinput n
 putStr("Product: ")
 print(prod l)