toBin :: Int -> String
toBin 0 = ""
toBin x
	| mod x 2 == 1 = toBin (div x 2) ++ "1"
	| otherwise = toBin (div x 2) ++ "0"
