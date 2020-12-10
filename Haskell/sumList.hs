sumList :: [Int] -> Int
sumList [] = 0
sumList (h:t) = h + sumList t

main :: IO()
main = do
   input <- getLine
   let l = sumList (read input)
   print l
