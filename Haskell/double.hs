double :: Int -> Int
double x = 2 * x

main :: IO()
main = do
	input <- getLine
	let num = double (read input)
	print num
