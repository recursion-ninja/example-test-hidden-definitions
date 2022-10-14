module Main (main) where


import Foo (fizzBuzz)
import Foo.Internal (divisibleBy)


main :: IO ()
main = do
    () <-   if 15 `divisibleBy` [3,5]
            then putStrLn "\t'divisibleBy' tested!"
            else putStrLn "\t'divisibleBy'" *> fail "TestFoo failed!"
    fizzBuzz [3,5] (10 :: Word)
