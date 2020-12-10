split :: String -> [String]
split [] = [""]
split (c:cs)
    | [c] == " " = "" : split cs
    | otherwise = (c : head (split cs)) : tail (split cs)

count :: String -> Int
count s
    | s == ""   = 0
    | otherwise = n
    where n = length (split s)

findEmptyString :: [String] -> Int -> Int
findEmptyString [] 0 = 0
findEmptyString [] n = n
findEmptyString (h:t) n = if h == "" then findEmptyString t (n+1)
                        else findEmptyString t n

qtySpaces :: String -> Int
qtySpaces [] = 0
qtySpaces s = (count s) - (findEmptyString (split s) 0)

main :: IO()
main = do
    frase <- getLine
    let resp = qtySpaces frase
    print resp
