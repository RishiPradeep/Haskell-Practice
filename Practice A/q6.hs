square :: Fractional a  => a -> a
square a = a * a

cube :: Fractional a => a -> a
cube a = a*a*a 

root :: Float -> Float
root a = sqrt a

main :: IO ()
main = do
    x <- getLine 
    let a = read x :: Float
    putStrLn("The square is " ++ show (square a))
    putStrLn("The cube is " ++  show (cube a))
    putStrLn("The root is " ++ show (root a))