module Main where

import Lib
import ReplaceEx

main :: IO ()
main = do
  putStr "lms is: "
  print lms

  putStr "replaceWithP' lms: "
  print (replaceWithP' lms)

  putStr "liftedReplace lms: "
  print (liftedReplace lms)

  putStr "liftedReplace' lms: "
  print (liftedReplace' lms)

  putStr "twiceLifted lms: "
  print (twiceLifted lms)

  putStr "twiceLifted' lms: "
  print (twiceLifted' lms)

  putStr "triceLifted lms: "
  print (triceLifted lms)

  putStr "triceLifted' lms: "
  print (triceLifted' lms)
