area :: Double -> Double 
area x = 3.14 * (x*x*x)

volume :: Double -> Double 
volume x = 4/3 * (area x)

main :: IO ()
main = do 
    x <- getLine 
    let a = read x :: Double 
    putStrLn("The area and volume are " ++ show (area a) ++ " and " ++ show (volume a) )