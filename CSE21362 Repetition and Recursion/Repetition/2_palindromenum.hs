palindrome::[Char]->Bool
palindrome a = ((reverse a)==a )

rev::[Char]->[Char]
rev [] = []
rev (x:xs) = rev xs++[x]

palindrome2::([Char]->[Char])->[Char]->Bool
palindrome2 f xs = (f xs == xs)

palindrome1::[Char]->[Char]->Bool
palindrome1 [] [] = True
palindrome1 (x:xs) (y:ys) = (if x==y then True else False) && palindrome1 xs ys

main = do
 putStr("Enter a number:")
 num <- getLine
 putStrLn("Method 1: (using reverse built-in function)")
 putStrLn("Palindrome: "++show (palindrome num))
 putStrLn("Method 2: (using user defined function rev and recursion)")
 putStrLn("Palindrome: "++show (palindrome1 num (rev num)))
 putStrLn("Method 3: (using user defined function rev and higher order function)")
 putStrLn("Palindrome: "++show (palindrome2 rev num))