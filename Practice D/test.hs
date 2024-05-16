tempfunc :: [Char] -> Int -> Int -> Int -> [Int]
tempfunc [] a b c = [a,b,c]
tempfunc (x:xs) vow nums const 
    | elem x "aeiouAEIOU" =  tempfunc xs (vow+1) nums const 
    | x >= '0' && x <= '9' = tempfunc xs vow (nums + 1) const
    | otherwise = tempfunc xs vow nums (const + 1)

main :: IO ()
main = do
    print("Enter the line")
    line <- getLine
    print("[Vowels,Numbers Constonants] = " ++ show(tempfunc line 0 0 0))
    
