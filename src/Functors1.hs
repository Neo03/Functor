module Functors1 where

import Data.Functor

data FixMePls a =
  FixMe
  |Pls a
  deriving (Eq, Show)

data WhoCares a =
  ItDoesnt
  | Matter a
  | WhatThisIsCalled
  deriving (Eq, Show)

data CountingBad a =
  Heisenberg Int a
  deriving (Eq, Show)

instance Functor FixMePls where
  fmap _  FixMe  = FixMe
  fmap f (Pls a) = Pls (f a)

instance Functor WhoCares where
  fmap _ ItDoesnt = ItDoesnt
  fmap f (Matter a) = Matter (f a)
  fmap _ WhatThisIsCalled = WhatThisIsCalled
-- not correct
instance Functor CountingBad where
  fmap f (Heisenberg n a) = Heisenberg (n + 1) (f a)
-- correct is: fmap f (Heisenberg n a) = Heisenberg (n) (f a)
