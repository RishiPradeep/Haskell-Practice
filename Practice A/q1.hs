printAddress :: String -> IO ()
printAddress x = putStrLn ("Your Address is " ++ x)

main :: IO ()
main = do 
    input <- getLine
    printAddress input