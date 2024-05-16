average :: [Double] -> Double
average [] = 0
average xs = sum xs / (fromIntegral (length (xs)))

checkless :: [Double] -> Bool
checkless [] = False
checkless xs
    | length ([x | x <- xs , x < (average xs)]) >= 2 = True
    | otherwise = False


main :: IO ()
main = do
  putStrLn "Enter the number of Students"
  nos <- getLine
  let n = read nos :: Double -- Change to Double for consistent type
  putStrLn ("Enter the marks separated by spaces")
  line <- getLine
  let marks = map read (words line) :: [Double]
  putStrLn ("Average marks is " ++ show (average marks))
  putStrLn ("More than 2 students have below average : " ++ show (checkless marks))
  if checkless marks 
    then putStrLn("Teach better")
  else 
    putStrLn("You Taught good")
