module Pangram (isPangram) where
import Data.Char (toLower)

allLowerCase :: String -> String
allLowerCase = map toLower


--implemented the enumFromTo for making alphabet
--instead of straight typing it out
alphabet :: String
alphabet = ['a' .. 'z']


isCharPresent :: String -> Char -> Bool
isCharPresent text letter = elem letter text

--used isCharPresent
allCharPresent :: String -> Bool
allCharPresent text = all (isCharPresent text) alphabet
-- all takes a boolean function and applies it to every element in a list
--so all takes isCharPresent, and applies it to the text over everything in alphabet

isPangram :: String -> Bool
--below works, but doesn't take your suggestions
--isPangram text = allCharPresent (allLowerCase text)
--(f . g) x = f (g x)
--text: x  allCharPresent:f  allLowerCase: g
--so then my current form is f (g x)
isPangram text = (allCharPresent . allLowerCase) text
--okay it passes the tests



--this is 1st iteration, I rolled back to this and made above.
--module Pangram (isPangram) where
--import Data.Char (toLower)

--allLowerCase :: String -> String
--allLowerCase = map toLower

--alphabet :: String
--alphabet = "abcdefghijklmnopqrstuvwxyz"

--isCharPresent :: Char -> String -> Bool
--isCharPresent letter text = elem letter text

--allCharPresent :: String -> String -> Bool
--allCharPresent text container =
  --all (\letter -> letter `elem` text) container

--isPangram :: String -> Bool
--isPangram text = allCharPresent (allLowerCase text) alphabet

