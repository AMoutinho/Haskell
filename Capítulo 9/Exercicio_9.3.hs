-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 9 | Exercício 9.3 -- 

-- 9.3) Baseando-se no exemplo 5, faça um jogo de Pedra, Papel e
--      Tesoura.

import System.Random (randomRIO)
import Data.Char (toLower)

data Choice = Rock | Paper | Scissors deriving (Show, Eq, Enum, Bounded)

stringToChoice :: String -> Maybe Choice
stringToChoice "rock" = Just Rock
stringToChoice "paper" = Just Paper
stringToChoice "scissors" = Just Scissors
stringToChoice _ = Nothing

choiceToString :: Choice -> String
choiceToString Rock = "rock"
choiceToString Paper = "paper"
choiceToString Scissors = "scissors"

determineWinner :: Choice -> Choice -> String
determineWinner player computer
    | player == computer = "It's a tie!"
    | (player == Rock && computer == Scissors) ||
      (player == Paper && computer == Rock) ||
      (player == Scissors && computer == Paper) = "You win!"
    | otherwise = "Computer wins!"

getUserChoice :: IO Choice
getUserChoice = do
    putStrLn "Enter rock, paper, or scissors:"
    input <- getLine
    case stringToChoice (map toLower input) of
        Just choice -> return choice
        Nothing -> do
            putStrLn "Invalid choice, please try again."
            getUserChoice

getComputerChoice :: IO Choice
getComputerChoice = do
    randomIndex <- randomRIO (0, 2)
    return (toEnum randomIndex)

main :: IO ()
main = do
    putStrLn "Welcome to Rock, Paper, Scissors!"
    userChoice <- getUserChoice
    computerChoice <- getComputerChoice
    putStrLn $ "You chose: " ++ choiceToString userChoice
    putStrLn $ "Computer chose: " ++ choiceToString computerChoice
    putStrLn $ determineWinner userChoice computerChoice
