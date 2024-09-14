-- | [`Sizes`](https://bulma.io/documentation/columns/sizes/) of `Columns`
module Bulma.Columns.Size
  ( isNarrow
  , isNarrowResponsive
  , isOffset
  , PercentSize(..)
  , isPercentOffset
  , isPercentSize
  , isPercentSizeResponsive
  , isSize
  , is1
  , is2
  , is3
  , is4
  , is5
  , is6
  , is7
  , is8
  , is9
  , is10
  , is11
  , is12
  , isSmall
  , isOneQuarter
  ) where

import Prelude

import Bulma.Common (class ClassHelper,Size(..), Breakpoint, ClassName(..), ClassPart(..), Is(..), isClass, joinClassParts, notSupported, toClassPart)

-- | [Percentage sizes](https://bulma.io/documentation/columns/sizes/)
data PercentSize
  = ThreeQuarters
  | TwoThirds
  | Half
  | OneThird
  | OneQuarter
  | FourFifths
  | ThreeFifths
  | TwoFifths
  | OneFifth

instance chPercentSize :: ClassHelper PercentSize where
  toClassPart ThreeQuarters = ClassPart "three-quarters"
  toClassPart TwoThirds = ClassPart "two-thirds"
  toClassPart Half = ClassPart "half"
  toClassPart OneThird = ClassPart "one-third"
  toClassPart OneQuarter = ClassPart "one-quarter"
  toClassPart FourFifths = ClassPart "four-fifths"
  toClassPart ThreeFifths = ClassPart "three-fifths"
  toClassPart TwoFifths = ClassPart "two-fifths"
  toClassPart OneFifth = ClassPart "one-fifth"

-- | Adds a percentage size
isPercentSize :: PercentSize -> ClassName
isPercentSize = isClass <<< toClassPart

-- | Adds a percentage size depending on a breakpoint
isPercentSizeResponsive :: PercentSize -> Breakpoint -> ClassName
isPercentSizeResponsive s bp =
  isClass $ joinClassParts [toClassPart s, toClassPart bp]

-- | Sets an `Is` size
isSize :: Is -> ClassName
isSize i =
  let className = isClass $ toClassPart i in
  if i <= Is1 || i >= Is12
  then notSupported className
  else className

-- | `is-offset` class
isOffset :: Is -> ClassName
isOffset = isOffsetClass <<< toClassPart

-- | `is-offset-x` class, where `x` is a percentage size
isPercentOffset :: PercentSize -> ClassName
isPercentOffset = isOffsetClass <<< toClassPart

-- | `is-narrow` class
isNarrow :: ClassName
isNarrow = isClass $ ClassPart "narrow"

-- | `is-narrow` class depending on a breakpoint
isNarrowResponsive :: Breakpoint -> ClassName
isNarrowResponsive bp = isClass $ joinClassParts [ClassPart "narrow", toClassPart bp]

-- private helpers

isOffsetClass :: ClassPart -> ClassName
isOffsetClass s = isClass $ joinClassParts [ClassPart "offset", s]

is :: String -> ClassName
is s = isClass $ joinClassParts [ClassPart s]

is1 :: ClassName
is1 = is "1"

is2 :: ClassName
is2 = is "2"

is3 :: ClassName
is3 = is "3"

is4 :: ClassName
is4 = is "4"

is5 :: ClassName
is5 = is "5"

is6 :: ClassName
is6 = is "6"

is7 :: ClassName
is7 = is "7"

is8 :: ClassName
is8 = is "8"

is9 :: ClassName
is9 = is "9"

is10 :: ClassName
is10 = is "10"

is11 :: ClassName
is11 = is "11"

is12 :: ClassName
is12 = is "12"

isSmall :: ClassName
isSmall = isClass $ toClassPart Small

isOneQuarter :: ClassName
isOneQuarter = isPercentSize OneQuarter