-- | Shared classes and helpers

module Bulma.Common where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Newtype (class Newtype, over, unwrap, wrap)
import Data.Show.Generic (genericShow)
import Data.String (joinWith)

-- | Sets an `Alignment`
isAlignment :: Alignment -> ClassName
isAlignment = isClass <<< toClassPart

-- | `.is-boxed` class
isBoxed :: ClassName
isBoxed = isClass $ ClassPart "boxed"

-- | `.is-fullwidth` class
isFullwidth :: ClassName
isFullwidth = isClass $ ClassPart "fullwidth"

-- | `.is-selected` class
isSelected :: ClassName
isSelected = isClass $ ClassPart "selected"

-- | `.has-addons` class
hasAddons :: ClassName
hasAddons = hasClass addonsPart

addonsPart :: ClassPart
addonsPart = ClassPart "addons"

-- | `.is-grouped` class
isGrouped :: ClassName
isGrouped = isClass groupedPart

groupedPart :: ClassPart
groupedPart = ClassPart "grouped"

emptyPart :: ClassPart 
emptyPart = ClassPart ""

-- | `.is-static` class
isStatic :: ClassName
isStatic = isClass $ ClassPart "static"

class ClassHelper a where
  toClassPart :: a -> ClassPart

-- | Helper to flag a `ClassPart` as "not supported"
notSupportedPart :: ClassPart -> ClassPart
notSupportedPart = over ClassPart (flip (<>) "-IS-NOT-SUPPORTED-HERE")

-- | Helper to flag a `ClassName` as "not supported"
notSupported :: ClassName -> ClassName
notSupported = over ClassName (flip (<>) "-IS-NOT-SUPPORTED-HERE")

-- | `is-X` classes, where `X` can be a value from `1` to `12`
data Is
  = Is1
  | Is2
  | Is3
  | Is4
  | Is5
  | Is6
  | Is7
  | Is8
  | Is9
  | Is10
  | Is11
  | Is12

derive instance eqIs :: Eq Is
derive instance ordIs :: Ord Is

instance chIs :: ClassHelper Is where
  toClassPart Is1 = ClassPart "1"
  toClassPart Is2 = ClassPart "2"
  toClassPart Is3 = ClassPart "3"
  toClassPart Is4 = ClassPart "4"
  toClassPart Is5 = ClassPart "5"
  toClassPart Is6 = ClassPart "6"
  toClassPart Is7 = ClassPart "7"
  toClassPart Is8 = ClassPart "8"
  toClassPart Is9 = ClassPart "9"
  toClassPart Is10 = ClassPart "10"
  toClassPart Is11 = ClassPart "11"
  toClassPart Is12 = ClassPart "12"

-- | Common colors used by different elements
data Color
  = Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger

derive instance eqColor :: Eq Color
derive instance ordColor :: Ord Color

instance chColor :: ClassHelper Color where
  toClassPart Primary = ClassPart "primary"
  toClassPart Link = ClassPart "link"
  toClassPart Info = ClassPart "info"
  toClassPart Success = ClassPart "success"
  toClassPart Warning = ClassPart "warning"
  toClassPart Danger = ClassPart "danger"

-- | Common `Size`'s used by several elements
data Size
  = Small
  | Medium
  | Large

derive instance eqSize :: Eq Size
derive instance ordSize :: Ord Size

instance chSize :: ClassHelper Size where
  toClassPart Small = ClassPart "small"
  toClassPart Medium = ClassPart "medium"
  toClassPart Large = ClassPart "large"

-- | Breakpoints
data Breakpoint
  = Mobile
  | Tablet
  | TabletOnly
  | Touch
  | Desktop
  | DesktopOnly
  | Widescreen
  | WidescreenOnly
  | FullHD


instance chBreakpoint :: ClassHelper Breakpoint where
  toClassPart Mobile = ClassPart "mobile"
  toClassPart Tablet = ClassPart "tablet"
  toClassPart TabletOnly = ClassPart "tablet-only"
  toClassPart Touch = ClassPart "touch"
  toClassPart Desktop = ClassPart "desktop"
  toClassPart DesktopOnly = ClassPart "desktop-only"
  toClassPart Widescreen = ClassPart "widescreen"
  toClassPart WidescreenOnly = ClassPart "widescreen-only"
  toClassPart FullHD = ClassPart "fullhd"

-- | Common `Alignment`
data Alignment
  = Left
  | Right
  | Centered

instance chAlignment :: ClassHelper Alignment where
  toClassPart Left = ClassPart "left"
  toClassPart Right = ClassPart "right"
  toClassPart Centered = ClassPart "centered"

derive instance eqAlignment :: Eq Alignment
derive instance ordAlignment :: Ord Alignment

newtype ClassName = ClassName String
derive instance eqClassName :: Eq ClassName
derive instance ntClassName :: Newtype ClassName _

derive instance gClassName :: Generic ClassName _
instance sClassName :: Show ClassName where
  show = genericShow

newtype ClassPart = ClassPart String
derive instance eqClassPart :: Eq ClassPart
derive instance ntClassPart :: Newtype ClassPart _

derive instance gClassPart :: Generic ClassPart _
instance sClassPart :: Show ClassPart where
  show = genericShow

-- | Helper to create a `is-...` class
isClass :: ClassPart -> ClassName
isClass cp =
  toClassName $ joinClassParts [ClassPart "is", cp]

  -- | Helper to create a `has-...` class
hasClass :: ClassPart -> ClassName
hasClass cp =
  toClassName $ joinClassParts [ClassPart "has", cp]

emptyClass :: ClassName 
emptyClass = toClassName emptyPart

joinClassParts :: Array ClassPart -> ClassPart
joinClassParts arr = ClassPart $ joinWith "-" $ map unwrap arr

toClassName :: ClassPart -> ClassName
toClassName = wrap <<< unwrap

runClassName :: ClassName -> String
runClassName (ClassName name) = name

runClassNames :: Array ClassName -> String
runClassNames = joinWith " " <<< map runClassName

unsafeClassName :: String -> ClassName
unsafeClassName = ClassName

unsafeClassNames :: Array String -> Array ClassName
unsafeClassNames = map unsafeClassName
