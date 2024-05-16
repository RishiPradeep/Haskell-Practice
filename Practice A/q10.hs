area :: Double -> Double -> Double -> Double 
area x y z = sqrt(s*(s-x)*(s-y)*(s-z)) where s = semiperi x y z

semiperi  :: Double -> Double -> Double -> Double 
semiperi x y z = (x + y + z) /2

main :: IO ()
main = do 
    a <- getLine 
    b <- getLine
    c <- getLine 
    let x = read a :: Double 
    let y = read b :: Double 
    let z = read c :: Double 
    putStrLn("The area is " ++ show (area x y z))