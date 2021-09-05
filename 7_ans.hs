{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE GADTs #-}
module ReverseInt where

import Data.Foldable

data MyNum a where
  MyNum :: (Num a, Integral a) => a -> MyNum a

instance Foldable MyNum where
  foldMap f (MyNum n)
    | n == 0    = mempty
    | otherwise = f d <> foldMap f (MyNum ds)
   where (d, ds) = (n `rem` 10, n `quot` 10)

reverseInt :: Int -> Int
reverseInt num = r
 where
  MyNum r = foldl' cons (MyNum 0) (MyNum num)
  cons (MyNum !n) d = MyNum (n * 10 + d)

main :: IO ()
main = putStrLn $ "Reversed: " ++ show (reverseInt (-123))