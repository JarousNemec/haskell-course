module FirstWindow where

{-
================================================================================
GUIDE: HOW TO SETUP AND RUN A HASKELL GLOSS PROJECT ON WINDOWS (VIA CHOCOLATEY)
================================================================================

STEP 1: Install System Graphics Libraries
-----------------------------------------
Open PowerShell as an ADMINISTRATOR and run these commands to install MSYS2 
and the required FreeGLUT library:
  > choco install msys2 -y
  > msys2 -c "pacman --noconfirm -S mingw-w64-ucrt-x86_64-freeglut"

STEP 2: Make the Graphics Library Visible to Windows
----------------------------------------------------
Locate the installed "libfreeglut.dll" file in your MSYS2 installation folder.
Copy this file directly into your Haskell project directory.

STEP 3: Install the Haskell Gloss Package
-----------------------------------------
Open a regular PowerShell window, navigate to your project folder, and download 
the Gloss package. Provide flags to point to your MSYS2 include and lib folders:
  > cabal install gloss --ignore-project --extra-include-dirs="<PATH_TO_MSYS2>\ucrt64\include" --extra-lib-dirs="<PATH_TO_MSYS2>\ucrt64\lib"

STEP 4: Run the Hello World Code
--------------------------------
1. Create a file named "Main.hs" with the following source code:
      import Graphics.Gloss
      main = display (InWindow "Hello Gloss" (500, 500) (10, 10)) white (Circle 100)

2. Start the Cabal REPL environment with the Gloss dependency enabled:
      > cabal repl --build-depends gloss

3. Inside the GHCi environment, load your file and execute the main function:
      ghci> :set -package gloss
      ghci> :load Main.hs
      ghci> main
================================================================================
-}

import Graphics.Gloss
main = display (InWindow "Hello Gloss" (500, 500) (10, 10)) white (Circle 100)
