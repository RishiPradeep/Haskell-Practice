import Data.Char(digitToInt)

numinwords::String->String
numinwords [] = []
numinwords (x:xs)
  | x=='0' = "Zero "++numinwords(xs)
  | x=='1' = "One "++numinwords(xs)
  | x=='2' = "Two "++numinwords(xs)
  | x=='3' = "Three "++numinwords(xs)
  | x=='4' = "Four "++numinwords(xs)
  | x=='5' = "Five "++numinwords(xs)
  | x=='6' = "Six "++numinwords(xs)
  | x=='7' = "Seven "++numinwords(xs)
  | x=='8' = "Eight "++numinwords(xs)
  | x=='9' = "Nine "++numinwords(xs)
  | otherwise = []

main = do
 putStr("Enter a number:")
 x <- getLine
 putStrLn("The number, "++x++" in words: "++numinwords x)