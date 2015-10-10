module Test.Main where

import Prelude

import Control.Monad.Eff
import Control.Monad.Eff.Console
import Network.AWS.Lambda

main = do
  succeed successContext "All good!"
  fail failContext "Oops"
  return unit


foreign import successContext :: Context

foreign import failContext :: Context
