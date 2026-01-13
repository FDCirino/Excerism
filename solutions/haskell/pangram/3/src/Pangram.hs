module Pangram (isPangram) where
import Data.Char (toLower)

allLowerCase :: String -> String
allLowerCase = map toLower

alphabet :: [Char]
alphabet = ['a' .. 'z']

isCharPresent :: String -> Char -> Bool
isCharPresent text letter = elem letter text

allCharPresent :: String -> String -> Bool
allCharPresent text container=
  all (isCharPresent text) container

allCharPresentAlphabet :: String->Bool
allCharPresentAlphabet = flip allCharPresent alphabet

isPangram :: String -> Bool
isPangram  = allCharPresentAlphabet.allLowerCase 