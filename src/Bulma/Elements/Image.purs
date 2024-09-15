-- | Bulma [`Image`](https://bulma.io/documentation/elements/image/) classes

module Bulma.Elements.Image
  ( Dimension(..)
  , image
  , isDimension
  , isRatio
  , Ratio(..)
  , is16x16
  , is24x24
  , is32x32
  , is48x48
  , is64x64
  , is96x96
  , is128x128
  , isSquare
  , hasRatio
  ) where

import Prelude
import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), isClass, toClassPart,hasClass)

-- | `.image` class
image :: ClassName
image = ClassName "image"

-- | Image [dimensions](https://bulma.io/documentation/elements/image/#fixed-square-images)
data Dimension
  = D16x16
  | D24x24
  | D32x32
  | D48x48
  | D64x64
  | D96x96
  | D128x128

instance chDimension :: ClassHelper Dimension where
  toClassPart D16x16 = ClassPart "16x16"
  toClassPart D24x24 = ClassPart "24x24"
  toClassPart D32x32 = ClassPart "32x32"
  toClassPart D48x48 = ClassPart "48x48"
  toClassPart D64x64 = ClassPart "64x64"
  toClassPart D96x96 = ClassPart "96x96"
  toClassPart D128x128 = ClassPart "128x128"

-- | Sets a `Dimension` of an image
isDimension :: Dimension -> ClassName
isDimension = isClass <<< toClassPart

-- | Responsive image w/ [ratios](https://bulma.io/documentation/elements/image/#fixed-square-images)
data Ratio
  = Square
  | OneByOne
  | FiveByFour
  | FourByThree
  | ThreeByTwo
  | FiveByThree
  | SixteenByNine
  | TwoByOne
  | ThreeByOne
  | FourByFive
  | ThreeByFour
  | TwoByThree
  | ThreeByFive
  | NineBySixteen
  | OneByTwo
  | OneByThree

instance chRatio :: ClassHelper Ratio where
  toClassPart Square = ClassPart "square"
  toClassPart OneByOne = ClassPart "1by1"
  toClassPart FiveByFour = ClassPart "5by4"
  toClassPart FourByThree = ClassPart "4by3"
  toClassPart ThreeByTwo = ClassPart "3by2"
  toClassPart FiveByThree = ClassPart "5by3"
  toClassPart SixteenByNine = ClassPart "16by9"
  toClassPart TwoByOne = ClassPart "2by1"
  toClassPart ThreeByOne = ClassPart "3by1"
  toClassPart FourByFive = ClassPart "4by5"
  toClassPart ThreeByFour = ClassPart "3by4"
  toClassPart TwoByThree = ClassPart "2by3"
  toClassPart ThreeByFive = ClassPart "3by5"
  toClassPart NineBySixteen = ClassPart "9by16"
  toClassPart OneByTwo = ClassPart "1by2"
  toClassPart OneByThree = ClassPart "1by3"

-- | Sets a `Ratio` for an image
isRatio :: Ratio -> ClassName
isRatio = isClass <<< toClassPart

-- | `.is-16x16`
is16x16 :: ClassName
is16x16 = isDimension D16x16

-- | `.is-24x24`
is24x24 :: ClassName
is24x24 = isDimension D24x24

-- | `.is-32x32`
is32x32 :: ClassName
is32x32 = isDimension D32x32

-- | `.is-48x48`
is48x48 :: ClassName
is48x48 = isDimension D48x48

-- | `.is-64x64`
is64x64 :: ClassName
is64x64 = isDimension D64x64

-- | `.is-96x96`
is96x96 :: ClassName
is96x96 = isDimension D96x96

-- | `.is-128x128`
is128x128 :: ClassName
is128x128 = isDimension D128x128

-- | `.is-square`
isSquare :: ClassName
isSquare = isRatio Square

-- | `.has-ratio`
hasRatio :: ClassName
hasRatio = hasClass $ ClassPart "ratio"
