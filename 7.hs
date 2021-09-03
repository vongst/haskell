-- Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
-- Assume the environment does not allow you to store 64-bit integers (signed or unsigned).


import Data.List
import System.IO

main :: IO ()

main = do
    n <- readLn :: IO Int
    print (isNeg n)
    print (reverseInteger n)

reverseInteger :: Int -> Int
reverseInteger x = x

isNeg :: Int -> Bool
isNeg n 
 | n <= 0 = True
 | otherwise = False