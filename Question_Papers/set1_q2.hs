altMap :: ( a -> b ) -> (a -> b) -> [a] -> [b]
altMap fa fb [] = []
altMap fa fb [a] = [fa a]
altMap fa fb (x:y:xs) = fa x : fb y : altMap fa fb xs