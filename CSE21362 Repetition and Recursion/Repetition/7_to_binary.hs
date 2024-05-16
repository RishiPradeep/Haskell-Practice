toBinary::Int->String
toBinary 0 = ""
toBinary n = toBinary (n `div` 2) ++ show (mod n 2)

main = do
 putStr("Enter a decimal number:")
 x <- getLine
 let num = read x::Int
 putStrLn("Decimal: "++ x)
 putStrLn("Binary: "++(toBinary num))