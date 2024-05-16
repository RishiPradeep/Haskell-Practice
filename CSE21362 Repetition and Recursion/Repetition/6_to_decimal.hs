import Data.Char(digitToInt)

toDecimal::Int->String->Int
toDecimal 0 _ = 0
toDecimal n (x:xs) = (digitToInt x)*(2^(n-1)) + toDecimal (n-1) xs

main = do
 putStr("Enter a binary number:")
 num <- getLine
 putStrLn("Binary: "++ num)
 putStrLn("Decimal: "++show (toDecimal (length num) num))