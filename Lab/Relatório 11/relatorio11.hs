-- Exercício 1

ain :: IO ()
main = print lastElement
  where
    -- Cria a lista com números de 30 até 1 (decrescendo)
    lista = [30, 29..1]
    
    -- Multiplica cada elemento da lista por 3
    listaMultiplicada = map (*3) lista
    
    -- Inverte a lista
    listaInvertida = reverse listaMultiplicada
    
    -- Pega o último elemento da lista invertida
    lastElement = head listaInvertida

-- Exercício 2

main :: IO ()
main = do
  putStrLn "Digite um número:"
  input <- getLine
  let number = read input :: Integer
  let result = if number > 0
               then factorial number
               else number * 2
  putStrLn ("Resultado: " ++ show result)

-- Função para calcular o fatorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
