applyNTimes :: Int -> (a -> a) -> a -> a
applyNTimes 0 f a = a
applyNTimes n f a = applyNTimes (n-1) f (f a)

