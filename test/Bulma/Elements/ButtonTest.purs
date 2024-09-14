module Bulma.Elements.ButtonTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Common (Color(..)) as C
import Bulma.Elements.Button (Color(..), State(..), Style(..), button, buttons, isColor, isState, isStyle,isSmall,isNormal,isMedium,isLarge,areMedium,areLarge,areSmall)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteButton :: Free TestF Unit
testSuiteButton =
  suite "Button" do
    test "common" do
      button `equal` ClassName "button"
      buttons `equal` ClassName "buttons"
    test "colors" do
      isColor White `equal` ClassName "is-white"
      isColor Light `equal` ClassName "is-light"
      isColor Dark `equal` ClassName "is-dark"
      isColor Black `equal` ClassName "is-black"
      isColor Text `equal` ClassName "is-text"
      isColor (CommonColor C.Primary) `equal` ClassName "is-primary"
      isColor (CommonColor C.Link) `equal` ClassName "is-link"
      isColor (CommonColor C.Info) `equal` ClassName "is-info"
      isColor (CommonColor C.Success) `equal` ClassName "is-success"
      isColor (CommonColor C.Warning) `equal` ClassName "is-warning"
      isColor (CommonColor C.Danger) `equal` ClassName "is-danger"
    test "styles" do
      isStyle Outlined `equal` ClassName "is-outlined"
      isStyle Inverted `equal` ClassName "is-inverted"
    test "states" do
      isState Normal `equal` ClassName ""
      isState Hover `equal` ClassName "is-hovered"
      isState Focus `equal` ClassName "is-focused"
      isState Active `equal` ClassName "is-active"
      isState Loading `equal` ClassName "is-loading"
    test "sizes" do
       isSmall `equal` ClassName "is-small"
       isMedium `equal` ClassName "is-medium"
       isLarge `equal` ClassName "is-large"
       isNormal `equal` ClassName "is-normal"
       areSmall `equal` ClassName "are-small"
       areMedium `equal` ClassName "are-medium"
       areLarge `equal` ClassName "are-large"
