hailstoneSeq::Int->[Int]
hailstoneSeq n
 | n==1 = []
 | mod n 2==0 = [even]++hailstoneSeq even
 | otherwise = [odd]++hailstoneSeq odd
 where even = (n `div` 2); odd = (3*n + 1)

main = do
 putStr("Enter a number:")
 x <- readLn
 let h = hailstoneSeq x
 putStrLn("The hailstone sequence for n = "++show x++" is: "++show ([x]++h))
 putStrLn("Length of sequence: "++show ( (length h) + 1 ))