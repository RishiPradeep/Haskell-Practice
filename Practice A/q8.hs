compoundInterest :: Double -> Double -> Double -> Double
compoundInterest principal rate time = principal * (1 + rate / 100) ** time


main :: IO ()
main = do
    putStrLn "Enter the initial amount:"
    principalStr <- getLine
    let principal = read principalStr :: Double

    putStrLn "Enter the number of years:"
    timeStr <- getLine
    let time = read timeStr :: Double

    putStrLn "Enter the interest percent:"
    rateStr <- getLine
    let rate = read rateStr :: Double

    putStrLn $ "Final amount = " ++ show (compoundInterest principal rate time)