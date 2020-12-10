removeNonUpper :: String -> String
removeNonUpper "" = ""
removeNonUpper (h:t) = if upper h then [h] ++ removeNonUpper t
                       else removeNonUpper t

upper :: Char -> Bool
upper c = find c ['A'..'Z']

find :: Char -> [Char] -> Bool
find c [] = False
find c (x:xs) = if c == x then True
                else find c xs
