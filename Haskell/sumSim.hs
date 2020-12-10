sumSim :: [Int] -> [Int]
sumSim (x:[]) = [x]
sumSim (x:y:[]) = [x+y]
sumSim (h:t) = [h + (last t)] ++ sumSim (take ((length t)-1) t)
