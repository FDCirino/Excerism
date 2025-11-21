module Pangram (isPangram) where
import Data.Char (toLower)

allLowerCase :: String -> String
allLowerCase = map toLower

alphabet :: String
alphabet = "abcdefghijklmnopqrstuvwxyz"

isCharPresent :: Char -> String -> Bool
isCharPresent letter text = elem letter text

allCharPresent :: String -> String -> Bool
allCharPresent text container=
  all (\letter -> letter `elem` text) container

isPangram :: String -> Bool
isPangram text = allCharPresent (allLowerCase text) alphabet