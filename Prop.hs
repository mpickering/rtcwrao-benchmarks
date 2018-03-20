{-# LANGUAGE NoImplicitPrelude #-}
module Prop where

import Prelude (Bool(..), (||), (&&))

class Prop r where
  or :: r -> r -> r
  and :: r -> r -> r
  true :: r
  false :: r

instance Prop Bool where
  or = (||)
  and = (&&)
  true = True
  false = False

data PropDict r = PropDict {
  dor :: r -> r -> r
  , dand :: r -> r -> r
  , dtrue :: r
  , dfalse :: r
  }

boolDict = PropDict {
  dor = (||)
  , dand = (&&)
  , dtrue = True
  , dfalse = False }

ors :: Prop r => [r] -> r
ors [] = true
ors (o:os) = o `or` ors os
{-# INLINABLE ors #-}

dors :: PropDict r -> [r] -> r
dors pd [] = dtrue pd
dors pd (o:os) = dor pd o (dors pd os)





