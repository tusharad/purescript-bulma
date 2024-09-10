-- | Classes for spacing helpers:
-- | * [`Spacing helpers`](https://bulma.io/documentation/helpers/spacing-helpers//)
module Bulma.CSS.Spacing
  ( 
    px1,
    px2,
    px3,
    px4,
    px5,
    px6,
    pxAuto,
    py1,
    py2,
    py3,
    py4,
    py5,
    py6,
    pyAuto,
    pb1,
    pb2,
    pb3,
    pb4,
    pb5,
    pb6,
    pbAuto
  )
  where

import Prelude

import Bulma.Common (class ClassHelper, Is(..),ClassName(..), ClassPart(..), Color(..), Is, isClass, joinClassParts, notSupported, toClassName, toClassPart)

py :: ClassPart
py = ClassPart "py"

px :: ClassPart
px = ClassPart "px"

pb :: ClassPart
pb = ClassPart "pb"

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

py1 :: ClassName
py1 = toClassName $ joinClassParts [py,toClassPart Is1]

py2 :: ClassName
py2 = toClassName $ joinClassParts [py,toClassPart Is2]

py3 :: ClassName
py3 = toClassName $ joinClassParts [py,toClassPart Is3]

py4 :: ClassName
py4 = toClassName $ joinClassParts [py,toClassPart Is4]

py5 :: ClassName
py5 = toClassName $ joinClassParts [py,toClassPart Is5]

py6 :: ClassName
py6 = toClassName $ joinClassParts [py,toClassPart Is6]

pyAuto :: ClassName
pyAuto = toClassName $ joinClassParts [py,ClassPart "auto"]

pb1 :: ClassName
pb1 = toClassName $ joinClassParts [pb,toClassPart Is1]

pb2 :: ClassName
pb2 = toClassName $ joinClassParts [pb,toClassPart Is2]

pb3 :: ClassName
pb3 = toClassName $ joinClassParts [pb,toClassPart Is3]

pb4 :: ClassName
pb4 = toClassName $ joinClassParts [pb,toClassPart Is4]

pb5 :: ClassName
pb5 = toClassName $ joinClassParts [pb,toClassPart Is5]

pb6 :: ClassName
pb6 = toClassName $ joinClassParts [pb,toClassPart Is6]

pbAuto :: ClassName
pbAuto = toClassName $ joinClassParts [pb,ClassPart "Auto"]