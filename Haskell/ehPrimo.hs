divisor :: Int -> Int -> Bool
divisor x y = mod x y == 0

ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo x = proxDiv x 2 == x

proxDiv :: Int -> Int -> Int
proxDiv x i = if divisor x i then i
			else proxDiv x (i+1)
