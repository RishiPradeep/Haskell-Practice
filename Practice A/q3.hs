convertDistance :: Num a => a -> a
convertDistance x = x * 1000

main :: IO ()
main = do 
    x <- getLine 
    let a = read x :: Double 
    putStrLn ("Distance in meters is " ++ show (convertDistance a))