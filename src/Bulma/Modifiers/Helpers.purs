-- | [Modifier helpers](https://bulma.io/documentation/modifiers/helpers/)

module Bulma.Modifiers.Helpers
  ( Helpers(..)
  , is
  , isPrimary
  , isWarning
  , isInfo
  )where

import Prelude

import Bulma.Common (class ClassHelper, ClassName, ClassPart(..), Color(..), isClass, toClassPart)
import Bulma.Modifiers.Modifiers (isColor)

data Helpers
  = Clearfix
  | PulledLeft
  | PulledRight
  | Marginless
  | Paddingless
  | Overlay
  | Clipped
  | Radiusless
  | Shadowless
  | Unsectable
  | Invisible
  | Shadow

instance chHelpers :: ClassHelper Helpers where
  toClassPart Clearfix = ClassPart "clearfix"
  toClassPart PulledLeft = ClassPart "pulled-left"
  toClassPart PulledRight = ClassPart "pulled-right"
  toClassPart Marginless = ClassPart "marginless"
  toClassPart Paddingless = ClassPart "paddingless"
  toClassPart Overlay = ClassPart "overlay"
  toClassPart Clipped = ClassPart "clipped"
  toClassPart Radiusless = ClassPart "radiusless"
  toClassPart Shadowless = ClassPart "shadowless"
  toClassPart Unsectable = ClassPart "unselectable"
  toClassPart Invisible = ClassPart "invisible"
  toClassPart Shadow = ClassPart "shadow"

-- | Sets a `Helper`
is :: Helpers -> ClassName
is = isClass <<< toClassPart

-- | Helper functions for color
{- is-primary -}
isPrimary :: ClassName
isPrimary = isColor Primary

{- is-warining -}
isWarning :: ClassName
isWarning = isColor Warning

{- is-info -}
isInfo :: ClassName
isInfo = isColor Info