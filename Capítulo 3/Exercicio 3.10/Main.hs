-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 3 | Exercício 3.10 --

-- Elabore um reversor de strings 

module Main where

revNum :: Int -> String -> String
revNum n s = reverse (take n s) ++ drop n s

main = do
  putStrLn "Reverter n String!"