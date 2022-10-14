module Foo (fizzBuzz) where


import Data.Foldable (traverse_)
import Foo.Internal (divisibleBy)


fizzBuzz :: Foldable f => f Word -> Word -> IO ()
fizzBuzz divisors = traverse_ print . filter (`divisibleBy` divisors) . enumFromTo 1
