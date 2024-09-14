module Bulma.Elements.ElementsTest where

import Prelude

import Bulma.Common (ClassName(..))
import Bulma.Elements.Elements (block, box, content, delete, icon, notification, progress)
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteElements :: Free TestF Unit
testSuiteElements =
  suite "Elements" do
    test "box" do
      box `equal` ClassName "box"
    test "content" do
      content `equal` ClassName "content"
    test "delete" do
      delete `equal` ClassName "delete"
    test "icon" do
      icon `equal` ClassName "icon"
    test "notification" do
      notification `equal` ClassName "notification"
    test "progress" do
      progress `equal` ClassName "progress"
    test "block" do
      block `equal` ClassName "block"
