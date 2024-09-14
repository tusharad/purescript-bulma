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
    pbAuto,
    pt1,
    pt2,
    pt3,
    pt4,
    pt5,
    pt6,
    ptAuto,
    mx1,
    mx2,
    mx3,
    mx4,
    mx5,
    mx6,
    mxAuto,
    my1,
    my2,
    my3,
    my4,
    my5,
    my6,
    myAuto
  )
  where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), Color(..), Is(..), Is, isClass, joinClassParts, notSupported, toClassName, toClassPart)

py :: ClassPart
py = ClassPart "py"

px :: ClassPart
px = ClassPart "px"

pb :: ClassPart
pb = ClassPart "pb"

pt :: ClassPart
pt = ClassPart "pt"

mx :: ClassPart
mx = ClassPart "mx"

my :: ClassPart
my = ClassPart "my"

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

pt1 :: ClassName
pt1 = toClassName $ joinClassParts [pt,toClassPart Is1]

pt2 :: ClassName
pt2 = toClassName $ joinClassParts [pt,toClassPart Is2]


pt3 :: ClassName
pt3 = toClassName $ joinClassParts [pt,toClassPart Is3]


pt4 :: ClassName
pt4 = toClassName $ joinClassParts [pt,toClassPart Is4]


pt5 :: ClassName
pt5 = toClassName $ joinClassParts [pt,toClassPart Is5]


pt6 :: ClassName
pt6 = toClassName $ joinClassParts [pt,toClassPart Is6]

ptAuto :: ClassName
ptAuto = toClassName $ joinClassParts [pt,ClassPart "auto"]

mx1 :: ClassName
mx1 = toClassName $ joinClassParts [mx,toClassPart Is1]

mx2 :: ClassName
mx2 = toClassName $ joinClassParts [mx,toClassPart Is2]

mx3 :: ClassName
mx3 = toClassName $ joinClassParts [mx,toClassPart Is3]

mx4 :: ClassName
mx4 = toClassName $ joinClassParts [mx,toClassPart Is4]

mx5 :: ClassName
mx5 = toClassName $ joinClassParts [mx,toClassPart Is5]

mx6 :: ClassName
mx6 = toClassName $ joinClassParts [mx,toClassPart Is6]

mxAuto :: ClassName
mxAuto = toClassName $ joinClassParts [mx,ClassPart "auto"]

my1 :: ClassName
my1 = toClassName $ joinClassParts [my,toClassPart Is1]

my2 :: ClassName
my2 = toClassName $ joinClassParts [my,toClassPart Is2]

my3 :: ClassName
my3 = toClassName $ joinClassParts [my,toClassPart Is3]

my4 :: ClassName
my4 = toClassName $ joinClassParts [my,toClassPart Is4]

my5 :: ClassName
my5 = toClassName $ joinClassParts [my,toClassPart Is5]

my6 :: ClassName
my6 = toClassName $ joinClassParts [my,toClassPart Is6]

myAuto :: ClassName
myAuto = toClassName $ joinClassParts [my, ClassPart "Auto"]
