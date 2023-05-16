module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Halogen (ClassName(..))
import Halogen.HTML as HH
import Halogen.VDom.DOM.StringRenderer (render)
import Tecton (all, display, height, inlineBlock, media, padding, pct, px, width, (&.), (:=), (?))
import Tecton as T
import Tecton.Halogen (style, styleSheet)
import Tecton.Rule as Rule
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)

main :: Effect Unit
main =
  launchAff_ $
    runSpec [consoleReporter] do
      describe "style" $
        it "renders declarations as a style attribute" $
          let
            HH.HTML el =
              HH.div
                [ style Rule.do
                    display := inlineBlock
                    padding := px 8
                    width := px 128
                    height := px 32
                ]
                []
          in
            render identity el
              `shouldEqual`
              "<div style=\"display: inline-block; padding: 8px; width: 128px; height: 32px\"></div>"
      describe "styleSheet" $
        it "renders a style sheet as a style element" $
          let
            HH.HTML el =
              styleSheet do
                T.header &. ClassName "masthead" ? Rule.do
                  width := pct 100
                  height := px 64
                media all { minWidth: px 1280 } ?
                  T.header ? Rule.do
                    width := px 960
          in
            render identity el
              `shouldEqual`
              """<style>
header.masthead {
  width: 100%;
  height: 64px;
}
@media all and (min-width: 1280px) {
  header {
    width: 960px;
  }
}
</style>"""
