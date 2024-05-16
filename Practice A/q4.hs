convertTemp :: Fractional a => a -> a
convertTemp x = (x - 32) * (5/9)

main :: IO ()
main = do 
    x <- getLine 
    let a = read x :: Double 
    putStrLn("Temp in celsius is " ++  show (convertTemp a) ++ " degree Celcius")