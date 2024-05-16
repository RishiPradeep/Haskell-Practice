initsegs :: [Int] -> [Int] -> [[Int]]
initsegs [] ys = [ys]
initsegs (x:xs) ys = ys : initsegs xs (ys++[x])