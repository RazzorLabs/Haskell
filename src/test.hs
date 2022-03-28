import System.IO
import System.Exit

import Control.Monad


main = forever (printMenu >> readChoice >>= menuAction)

printMenu = putStr "\np)rint 'Hello, world!'\ne)xit\nyour choice: " >> hFlush stdout

readChoice = hSetBuffering stdin NoBuffering >> hSetEcho stdin False >> getChar

menuAction 'p' = putStrLn "\nHello, world!"
menuAction 'e' = exitSuccess
menuAction _ = hPutStrLn stderr "\nInvalid choice."
