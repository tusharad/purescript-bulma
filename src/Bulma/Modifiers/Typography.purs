-- | Bulmas [Typography helpers](https://bulma.io/documentation/modifiers/typography-helpers/)

module Bulma.Modifiers.Typography
  ( Alignment(..)
  , Color(..)
  , hasAlignment
  , hasAlignmentResponsive
  , hasColor
  , hasWeight
  , isSizeResponsive
  , isTransformed
  , Size(..)
  , isSize
  , Transformation(..)
  , Weight(..)
  , hasTextCentered
  ) where

import Prelude

import Bulma.Common (Color(..)) as C
import Bulma.Common (class ClassHelper, Breakpoint(..), ClassName, ClassPart(..), hasClass, isClass, joinClassParts, notSupported, notSupportedPart, toClassPart)

-- | [Typography sizes](https://bulma.io/documentation/modifiers/typography-helpers/#size)
data Size
  = Size1
  | Size2
  | Size3
  | Size4
  | Size5
  | Size6
  | Size7

instance chSize :: ClassHelper Size where
  toClassPart Size1 = ClassPart "size-1"
  toClassPart Size2 = ClassPart "size-2"
  toClassPart Size3 = ClassPart "size-3"
  toClassPart Size4 = ClassPart "size-4"
  toClassPart Size5 = ClassPart "size-5"
  toClassPart Size6 = ClassPart "size-6"
  toClassPart Size7 = ClassPart "size-7"

-- | Sets a `Size`
isSize :: Size -> ClassName
isSize = isClass <<< toClassPart


-- | Sets a [responsive size](https://bulma.io/documentation/modifiers/typography-helpers/#responsive-size)

isSizeResponsive :: Size -> Breakpoint -> ClassName
isSizeResponsive s bp =
  let clazzName = isClass $ joinClassParts [toClassPart s, toClassPart bp] in
  case bp of
    DesktopOnly -> notSupported clazzName
    WidescreenOnly -> notSupported clazzName
    TabletOnly -> notSupported clazzName
    _ -> clazzName

-- | [Text colors](https://bulma.io/documentation/modifiers/typography-helpers/#colors)
data Color
  = CommonColor C.Color
  | White
  | Black
  | Light
  | Dark
  | BlackBis
  | BlackTer
  | GreyDarker
  | GreyDark
  | Grey
  | GreyLight
  | GreyLighter
  | WhiteTer
  | WhiteBis

instance chColor :: ClassHelper Color where
  toClassPart (CommonColor C.Link) = notSupportedPart $ toClassPart C.Link
  -- ^ `Link` is the only core color class, which is not support here
  toClassPart (CommonColor color) = toClassPart color
  toClassPart White = ClassPart "white"
  toClassPart Black = ClassPart "black"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart BlackBis = ClassPart "black-bis"
  toClassPart BlackTer = ClassPart "black-ter"
  toClassPart GreyDarker = ClassPart "grey-darker"
  toClassPart GreyDark = ClassPart "grey-dark"
  toClassPart Grey = ClassPart "grey"
  toClassPart GreyLight = ClassPart "grey-light"
  toClassPart GreyLighter = ClassPart "grey-lighter"
  toClassPart WhiteTer = ClassPart "white-ter"
  toClassPart WhiteBis = ClassPart "white-bis"

-- | Sets a `Color` to a text
hasColor :: Color -> ClassName
hasColor = hasTextClass  <<< toClassPart

-- | [Typography alignment](https://bulma.io/documentation/modifiers/typography-helpers/#alignment)
data Alignment
  = Centered
  | Justified
  | Left
  | Right

instance chAlignment :: ClassHelper Alignment where
  toClassPart Centered = ClassPart "centered"
  toClassPart Justified = ClassPart "justified"
  toClassPart Left = ClassPart "left"
  toClassPart Right = ClassPart "right"

-- Sets an `Alignment`
hasAlignment :: Alignment -> ClassName
hasAlignment = hasTextClass <<< toClassPart

-- | Sets an `Alignment` depending on breakpoints
hasAlignmentResponsive :: Alignment -> Breakpoint -> ClassName
hasAlignmentResponsive a bp =
  hasTextClass $ joinClassParts [toClassPart a, toClassPart bp]


-- | [Typography transformation](https://bulma.io/documentation/modifiers/typography-helpers/#text-transformation)
data Transformation
  = Capitalized
  | Lowercase
  | Uppercase

instance chTransformation :: ClassHelper Transformation where
  toClassPart Capitalized = ClassPart "capitalized"
  toClassPart Lowercase = ClassPart "lowercase"
  toClassPart Uppercase = ClassPart "uppercase"

-- | Transformes a text
isTransformed :: Transformation -> ClassName
isTransformed = isClass <<< toClassPart

-- | [Typography weight](https://bulma.io/documentation/modifiers/typography-helpers/#weight)
data Weight
  = LightWeight
  -- ^ Renamed from `Light` to `LightWeight`
  -- to avoid conficts of Color `Light`
  | Normal
  | Semibold
  | Bold

instance chWeight :: ClassHelper Weight where
  toClassPart LightWeight = ClassPart "weight-light"
  toClassPart Normal = ClassPart "weight-normal"
  toClassPart Semibold = ClassPart "weight-semibold"
  toClassPart Bold = ClassPart "weight-bold"

-- | Sets a `Weight` to a text
hasWeight :: Weight -> ClassName
hasWeight = hasTextClass <<< toClassPart

-- | Private helpers

hasTextClass  :: ClassPart -> ClassName
hasTextClass  str =
  hasClass $ joinClassParts [ClassPart "text", str]

hasTextCentered :: ClassName
hasTextCentered = hasTextClass $ toClassPart Centered