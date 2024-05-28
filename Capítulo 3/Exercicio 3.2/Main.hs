-- Tópicos Especiais em Sistemas para Internet III --
-- André Luiz Borges Moutinho --
-- Capítulo 3 | Exercício 3.2 --

--Faça o tipo Temperatura que pode ter valores Celsius, Farenheit ou Kelvin. Implemente as funções:
--converterCelsius: recebe um valor double e uma temperatura, e faz a conversão para Celsius.
--converterKelvin: recebe um valor double e uma temperatura, e faz a conversão para Kelvin.
--converterFarenheit: recebe um valor double e uma temperatura, e faz a conversão para Farenheit.

module Main where

data Temperatura = Celsius | Fahrenheit | Kelvin

converterCelsius :: Double -> Temperatura -> Double
converterCelsius valor Celsius = valor
converterCelsius valor Fahrenheit = (valor - 32.0) * (5.0 / 9.0)
converterCelsius valor Kelvin = valor - 273.15

converterKelvin :: Double -> Temperatura -> Double
converterKelvin valor Celsius = valor + 273.15
converterKelvin valor Fahrenheit = (valor - 32.0) * (5.0 / 9.0) + 273.15
converterKelvin valor Kelvin = valor

converterFarenheit :: Double -> Temperatura -> Double
converterFarenheit valor Celsius = valor * (9.0 / 5.0) + 32.0
converterFarenheit valor Fahrenheit = valor
converterFarenheit valor Kelvin = (valor - 273.15) * (9.0 / 5.0) + 32.0

main = do
  putStrLn "Conversor de Temperatura!"