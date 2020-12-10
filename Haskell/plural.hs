plural :: [String] -> Int
plura [] = 0
plural (a:as) = if endsWithS a then 1 + plural as
                else plural as

endsWithS :: String -> Bool
endsWithS (a:[]) = a == 's'
endsWithS (x:xs) = endsWithS xs
