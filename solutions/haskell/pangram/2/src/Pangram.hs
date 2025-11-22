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

isPangram :: String -> Bool
isPangram text = allCharPresent (allLowerCase text) alphabet