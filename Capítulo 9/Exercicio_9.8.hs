-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 9 | Exercício 9.8 -- 

-- 9.8) Leia um arquivo que tenha o seguinte formato:
-- 1 2
-- 2 4
-- 9 7
-- 455 300

-- E verifique o maior número de cada linha e, ao final, o maior
-- número entre todos. Estes números devem ser mostrados em um
-- arquivo.

import System.IO
import Control.Monad
import Data.List
import Data.Maybe

-- Função para ler o arquivo e processar as linhas
processFile :: FilePath -> IO [Int]
processFile filePath = do
    contents <- readFile filePath
    let linesOfNumbers = map (map read . words) (lines contents) :: [[Int]]
    return $ map maximum linesOfNumbers

-- Função para escrever os resultados em um arquivo
writeResults :: FilePath -> [Int] -> IO ()
writeResults filePath results = do
    let maxNumber = maximum results
    writeFile filePath (unlines (map show results) ++ "Maior número entre todos: " ++ show maxNumber)

main :: IO ()
main = do
    let inputFilePath = "input.txt"   -- Arquivo de entrada
    let outputFilePath = "output.txt" -- Arquivo de saída

    -- Processa o arquivo de entrada
    maxNumbers <- processFile inputFilePath

    -- Escreve os resultados no arquivo de saída
    writeResults outputFilePath maxNumbers

    putStrLn "Processamento completo. Veja o resultado em output.txt"




