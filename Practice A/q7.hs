simpleInterest :: Double -> Double -> Double -> Double
simpleInterest x y z  = x + (k * y) where k = (z/100) * x 

main :: IO ()
main = do 
    putStrLn ("Enter the initial amount")
    a <- getLine
    let i = read a :: Double
    putStrLn("Enter the number of years")
    b <- getLine 
    let j = read b :: Double
    putStrLn("Enter the interest percent")
    c <- getLine 
    let k = read c :: Double 
    putStrLn("Final amount = " ++ show (simpleInterest i j k))