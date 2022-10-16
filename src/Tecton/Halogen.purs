module Tecton.Halogen (style, styleSheet) where

import Prelude
import Control.Monad.Writer (Writer)
import Data.MediaType (MediaType(..))
import Halogen.HTML.Core as HC
import Halogen.HTML.Elements (style) as HE
import Halogen.HTML.Properties as HP
import Record.Builder (Builder)
import Type.RowList (class RowToList)
import Tecton.Internal (class BuildFromScratch, class CollectDeclarations, Statement, pretty, renderInline, renderSheet)

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
  :: forall r rl empty p i
   . RowToList r rl
  => CollectDeclarations rl r
  => BuildFromScratch empty (Record r)
  => Builder (Record empty) (Record r)
  -> HP.IProp (style :: String | p) i
style = HP.attr (HC.AttrName "style") <<< renderInline

-- | Creates a `style` element with the specified style sheet rendered as its
-- | text content.
styleSheet
  :: forall p i
   . Writer (Array Statement) Unit
  -> HC.HTML p i
styleSheet =
  HE.style [ HP.type_ $ MediaType "text/css" ]
    <<< pure
    <<< HC.text
    <<< (\s -> "\n" <> s <> "\n")
    <<< renderSheet pretty
