-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 9 | Exercício 9.1 -- 

-- 9.1) Faça um programa que faça o usuário digitar um número

module Main where

main :: IO ()
main = do
  putStrLn "Digite um numero: "
  numero <- readLn
  if even numero
    then putStrLn "Ele eh PAR"
    else putStrLn "Ele eh IMPAR"
