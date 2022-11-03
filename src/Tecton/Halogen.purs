module Tecton.Halogen (style, styleSheet) where

import Prelude
import Control.Monad.Writer (Writer)
import Data.List (List)
import Halogen.HTML.Core as HC
import Halogen.HTML.Elements as HE
import Halogen.HTML.Properties as HP
import Tecton.Internal (Declaration', Statement, pretty, renderInline, renderSheet)

-- | Renders declarations as an inline style, e.g.
-- | ```purescript
-- | HH.header
-- |   [ CSS.style Rule.do
-- |       width := pct 100
-- |       height := px 64
-- |   ]
-- |   [ ... ]
-- | ```
style
  :: forall ps p i
   . Writer (List Declaration') ps
  -> HP.IProp (style :: String | p) i
style = HP.attr (HC.AttrName "style") <<< renderInline

-- | Creates a `style` element with the specified style sheet rendered as its
-- | text content.
styleSheet :: forall p i. Writer (Array Statement) Unit -> HC.HTML p i
styleSheet =
  HE.style_
    <<< pure
    <<< HC.text
    <<< (\s -> "\n" <> s <> "\n")
    <<< renderSheet pretty
