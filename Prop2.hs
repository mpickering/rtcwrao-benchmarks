module Main where

import Prop
import Criterion.Main
import Criterion

test1 :: [Bool] -> Bool
test1 = ors

test2 :: [Bool] -> Bool
test2 = dors boolDict

test3 :: [Bool] -> Bool
test3 xs = dors boolDict xs

test4 :: [Bool] -> Bool
test4 xs = pors xs

test5 :: [Bool] -> Bool
test5 xs = porsProxy xs

boolBench name f = env boolEnv (\h -> bench name $ nf f h)

boolEnv = return bigBool

bigBool :: [Bool]
bigBool = replicate 1000000 False


main = defaultMain [
  bgroup "tc" [
      boolBench "Implementation 1"  test1
      , boolBench "Implementation 2"  test2
      , boolBench "Implementation 3"  test4
      , boolBench "Implementation 4"  test5
   ]
 ]
