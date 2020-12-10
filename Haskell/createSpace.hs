createSpace :: Int -> String
createSpace 0 = ""
createSpace n = " " ++ createSpace (n-1)

toTheLeft :: Int -> String -> String
toTheLeft n s = createSpace n ++ s
