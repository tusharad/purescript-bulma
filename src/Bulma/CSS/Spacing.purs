-- | Classes for spacing helpers:
-- | * [`Spacing helpers`](https://bulma.io/documentation/helpers/spacing-helpers//)
module Bulma.CSS.Spacing
  ( 
    px,
    px1,
    px2,
    px3,
    px4,
    px5,
    px6,
    pxAuto
  )
  where

import Prelude

import Bulma.Common (class ClassHelper, Is(..),ClassName(..), ClassPart(..), Color(..), Is, isClass, joinClassParts, notSupported, toClassName, toClassPart)

px :: ClassPart
px = ClassPart "px"

px1 :: ClassName
px1 = toClassName $ joinClassParts [px, toClassPart Is1]

px2 :: ClassName
px2 = toClassName $ joinClassParts [px, toClassPart Is2]

px3 :: ClassName
px3 = toClassName $ joinClassParts [px, toClassPart Is3]

px4 :: ClassName
px4 = toClassName $ joinClassParts [px, toClassPart Is4]

px5 :: ClassName
px5 = toClassName $ joinClassParts [px, toClassPart Is5]

px6 :: ClassName
px6 = toClassName $ joinClassParts [px, toClassPart Is6]

pxAuto :: ClassName
pxAuto = toClassName $ joinClassParts [px,ClassPart "auto"]