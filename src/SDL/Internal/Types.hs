{-# LANGUAGE DeriveDataTypeable #-}
module SDL.Internal.Types
  ( WindowID(..)
  , Joystick(..)
  , Window(..)
  , Renderer(..)
  ) where

import Data.Typeable
import Foreign

import qualified SDL.Raw as Raw

newtype WindowID = WindowID Word32
  deriving (Eq, Ord, Show, Typeable)

newtype Joystick = Joystick { joystickPtr :: Raw.Joystick }
  deriving (Eq, Typeable)

newtype Window = Window (Raw.Window)
  deriving (Eq, Typeable)

newtype Renderer = Renderer Raw.Renderer
  deriving (Eq, Typeable)