module Clock where

-- Run this program to setup libraries for the first program run:
-- cabal repl --build-depends gloss --build-depends time
--
-- After every start of ghci you need to load the packages:
-- ghci> :set -package gloss
-- ghci> :set -package time

import Graphics.Gloss
import Graphics.Gloss.Data.ViewPort (ViewPort)
import Data.Time.LocalTime
import Data.Time.Clock

-- | Main execution function
main :: IO ()
main = do
  -- Get the current system time when starting the program
  currentTime <- getZonedTime
  let timeOfDay = zonedTimeToLocalTime currentTime
  
  -- Start the clock simulation
  simulate
    (InWindow "Haskell Gloss Analog Clock" (400, 400) (10, 10)) -- Window settings
    white                                                       -- Background color
    1                                                           -- 1 FPS (perfectly sufficient)
    timeOfDay                                                   -- Initial time state
    drawClock                                                   -- Rendering function
    updateTime                                                  -- Time stepping function
    
-- | Advances the time state by 1 second (Viewport parameter is required by Gloss but ignored)
updateTime :: ViewPort -> Float -> LocalTime -> LocalTime
updateTime _ timeStep localTime = 
  let utcTime = localTimeToUTC utc localTime
      nextUtcTime = addUTCTime (realToFrac timeStep) utcTime
  in utcToLocalTime utc nextUtcTime

-- | Main rendering function (pure function)
drawClock :: LocalTime -> Picture
drawClock localTime = Pictures [clockFace, hands]
  where
    time = localTimeOfDay localTime
    h = fromIntegral (todHour time)
    m = fromIntegral (todMin time)
    s = realToFrac (todSec time)  

    -- Calculate rotation angles for each hand
    secondsAngle = 90 - (s * 6)
    minutesAngle = 90 - (m * 6 + s * 0.1)
    hoursAngle   = 90 - ((if h > 12 then h - 12 else h) * 30 + m * 0.5)

    -- Visual design of the clock face
    clockFace = Pictures 
      [ Color black (Circle 150)                           -- Outer border
      , Color (greyN 0.8) (ThickCircle 140 10)             -- Edge rim
      , Color red (Circle 5)                               -- Center pin
      ]

    -- Visual design and rotation of the clock hands
    hands = Pictures
      [ Rotate (-hoursAngle)   (Color black (Line [(0, 0), (70, 0)]))  -- Hour hand (short, black)
      , Rotate (-minutesAngle) (Color black (Line [(0, 0), (110, 0)])) -- Minute hand (long, black)
      , Rotate (-secondsAngle) (Color red   (Line [(0, 0), (125, 0)])) -- Second hand (thin, red)
      ]
