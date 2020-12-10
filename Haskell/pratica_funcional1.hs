f :: Int -> Int -> Int
f x y = (3 * x)^2 + y ^ 2

g :: Int -> Int -> Int
g x y = 2 * (x^2) + (5*y)^2

h :: Int -> Int -> Int
h x y = -100*x + y^3

ganhador :: Int -> Int -> String
ganhador x y
    | (joana > jose) && (jose > joaquina)     = "Joana ganhou!"
    | (joana > joaquina) && (joaquina > jose) = "Joana ganhou!"
    | (jose > joaquina) && (joaquina > joana) = "Jose ganhou!"
    | (jose > joana!) && (joana > joaquina)   = "Jose ganhou!"
    | (joaquina > jose) && (jose > joana)     = "Joaquina ganhou!"
    | otherwise                               = "Joaquina ganhou!"
    where joana    = f x y
          jose     = g x y
          joaquina = h x y
        

main :: IO()
main = do
    x <- getLine
    y <- getLine
    let resp = ganhador (read x) (read y)
    print resp
