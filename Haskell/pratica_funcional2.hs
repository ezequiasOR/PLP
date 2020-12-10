firstAction :: String -> String
firstAction "laranja"  = "amarelo + vermelho" 
firstAction "roxo"     = "vermelho + azul"
firstAction "verde"    = "azul + amarelo"
firstAction "vermelho" = "vermelho"
firstAction "amarelo"  = "amarelo"
firstAction "azul"     = "azul"
firstAction cor = "Entrada inválida!"

secondAction :: String -> String -> String
secondAction cor1 cor2
    | (cor1 == "amarelo") && (cor2 == "vermelho") = "laranja"
    | (cor1 == "vermelho") && (cor2 == "amarelo") = "laranja"
    | (cor1 == "vermelho") && (cor2 == "azul")    = "roxo"
    | (cor1 == "azul") && (cor2 == "vermelho")    = "roxo"
    | (cor1 == "azul") && (cor2 == "amarelo")     = "verde"
    | (cor1 == "amarelo") && (cor2 == "azul")     = "verde"
    | (cor1 == cor2) && (cor2 == "azul")          = "azul"
    | (cor1 == cor2) && (cor2 == "amarelo")       = "amarelo"
    | (cor1 == cor2) && (cor2 == "vermelho")      = "vermelho"
    | otherwise                                   = "Entrada inválida!"

main :: IO()
main = do
    num <- getLine
    if (read num) == 2
        then optionTwo
        else
            if (read num) == 1
                then optionOne
                else print "Entrada inválida!"

optionOne :: IO()
optionOne = do
    cor1 <- getLine
    let resp1 = firstAction cor1
    print resp1

optionTwo :: IO()
optionTwo = do
    cor1 <- getLine
    cor2 <- getLine
    let resp2 = secondAction cor1 cor2
    print resp2
