convertFeet :: Fractional a => a -> a
convertFeet x = x * 30.48

main :: IO ()
main = do 
    x <- getLine 
    let a = read x :: Double 
    putStrLn("Feet is " ++  show (convertFeet a) ++ "feet")