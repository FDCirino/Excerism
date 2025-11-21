module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ratio :: Planet -> Float
ratio Mercury = 0.2408467
ratio Venus   = 0.61519726 
ratio Earth   = 1.0
ratio Mars    = 1.8808158 
ratio Jupiter = 11.862615 
ratio Saturn  = 29.447498 
ratio Uranus  = 84.016846 
ratio Neptune = 164.79132 


earthYearInSeconds :: Float
earthYearInSeconds = 31557600.0

ageOn :: Planet -> Float -> Float
ageOn planet seconds = (seconds / earthYearInSeconds) / (ratio planet)