rev ::[Char]->[Char]
rev [] = []
rev(x:xs) = rev xs++[x]

main = do
 putStr("Enter a number:")
 x <- getLine
 putStrLn("Reverse of the given number is: "++rev x)