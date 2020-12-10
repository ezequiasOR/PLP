nota :: String -> Float -> String
nota s n        = if index < 11 then notas !! (round index)
                  else notas !! ((round (index)-1) -  modulo)
    where notas = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"]
          pos   = (posicao s notas 0)
          index = (pos + (n/0.5))
          modulo= (11 `mod` (round index))

posicao :: String -> [String] -> Float -> Float
posicao c [] n     = 0
posicao c (x:xs) n = if c == x then (n)
                else posicao c xs (n+1)

main :: IO()
main = do
    notaInput <- getLine
    tons <- getLine
    let resp = nota notaInput (read tons)
    print resp
