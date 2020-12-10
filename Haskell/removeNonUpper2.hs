removeNonUpper :: String -> String
removeNonUpper st = [c | c <- st, elem c ['A'..'Z']]
