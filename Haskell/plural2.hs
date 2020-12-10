plural :: [String] -> Int
plural st = length([s | s <- st, last s == 's'])
