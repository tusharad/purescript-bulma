-- | Bulma [`Button`](https://bulma.io/documentation/elements/button/) styles

module Bulma.Elements.Button
  ( button
  , buttons
  , Color(..)
  , isColor
  , Style(..)
  , isStyle
  , State(..)
  , isState
  , isLight
  , isActive
  , isDark
  , isSmall
  , isNormal
  , isMedium
  , isLarge
  , areSmall
  , areMedium
  , areLarge
  , isOutlined
  ) where

import Prelude

import Bulma.Common (Color) as C
import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), emptyClass, emptyPart, isClass, toClassPart,toClassName,joinClassParts)

-- | `.button` class
button :: ClassName
button = ClassName "button"

-- | `.buttons` class
buttons :: ClassName
buttons = ClassName "buttons"

-- | [Colors](https://bulma.io/documentation/elements/button/#colors) of a button
data Color
  = CommonColor C.Color
  | White
  | Light
  | Dark
  | Black
  | Text
  | Ghost

instance chColor :: ClassHelper Color where
  toClassPart (CommonColor color) = toClassPart color
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"
  toClassPart Text = ClassPart "text"
  toClassPart Ghost = ClassPart "ghost"

-- | Sets a `Color` of a button
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- | [Styles](https://bulma.io/documentation/elements/button/#styles) of a button
data Style
  = Outlined
  | Inverted

instance chStyle :: ClassHelper Style where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Inverted = ClassPart "inverted"

-- | Sets a `Style` of a button
isStyle :: Style -> ClassName
isStyle = isClass <<< toClassPart

-- | [States](https://bulma.io/documentation/elements/button/#states) of a button
data State
  = Normal
  | Hover
  | Focus
  | Active
  | Loading

derive instance eqState :: Eq State

instance chState :: ClassHelper State where
  toClassPart Normal = emptyPart
  toClassPart Hover = ClassPart "hovered"
  toClassPart Focus = ClassPart "focused"
  toClassPart Active = ClassPart "active"
  toClassPart Loading = ClassPart "loading"

-- | Sets a `State` of a button
isState :: State -> ClassName
isState st =
  if st == Normal 
    then emptyClass
    else isClass $ toClassPart st

-- | Helper color classes

-- | `is-light` class
isLight :: ClassName
isLight = isColor Light

-- | `is-active` class
isActive :: ClassName
isActive = isClass $ toClassPart Active

-- | `is-dark` class
isDark :: ClassName
isDark = isColor Dark

-- | [Sizes](https://bulma.io/documentation/elements/button/#sizes)
data Sizes = Small
           | Medium
           | Large

derive instance eqSizes :: Eq Sizes

instance chSizes :: ClassHelper Sizes where
    toClassPart Small = ClassPart "small"
    toClassPart Medium = ClassPart "medium"
    toClassPart Large = ClassPart "large"

-- | `is-small` class
isSmall :: ClassName
isSmall = isClass $ toClassPart Small

-- | `is-normal` class
-- | TODO: Not able to add `Normal` Type constructor in Sizes
isNormal :: ClassName
isNormal = isClass $ ClassPart "normal"

-- | `is-medium` class
isMedium :: ClassName
isMedium = isClass $ toClassPart Medium

-- | `is-large` class
isLarge :: ClassName
isLarge = isClass $ toClassPart Large

-- | Helper to create a `are-...` class
-- | Not exposing this right now
areClass :: ClassPart -> ClassName
areClass cp =
  toClassName $ joinClassParts [ClassPart "are", cp]

-- | `are-small` class
areSmall :: ClassName
areSmall = areClass $ toClassPart Small

-- | `are-medium` class
areMedium :: ClassName
areMedium = areClass $ toClassPart Medium

-- | `are-large` class
areLarge :: ClassName
areLarge = areClass $ toClassPart Large

-- | `is-outlined` class
isOutlined :: ClassName
isOutlined = isClass $ toClassPart Outlined
