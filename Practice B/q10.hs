readIntList :: IO [Int]
readIntList = do
    putStrLn "Enter the list of integers separated by space:"
    line <- getLine
    return (map read (words line))

main :: IO ()
main = do
    myList <- readIntList
    putStrLn ("List entered: " ++ show myList)