module Tecton.Halogen.Internal ((&.), byClass, style, styleSheet) where

import Prelude

import Control.Monad.Writer (Writer)
import Data.List (List)
import Halogen (ClassName(..))
import Halogen.HTML.Core as HC
import Halogen.HTML.Elements as HE
import Halogen.HTML.Properties as HP
import Tecton (CSS)
import Tecton.Internal (class IsExtensibleSelector, class ToVal, Declaration', Extensible, Selector, pretty, renderInline, renderSheet)
import Tecton.Internal as T

-- | Appends a class name to the end of a selector.
byClass
  :: forall selector
   . IsExtensibleSelector selector
  => ToVal selector
  => selector
  -> ClassName
  -> Selector Extensible
byClass s (ClassName c) = T.byClass s c

infixl 7 byClass as &.

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
styleSheet :: forall p i. CSS -> HC.HTML p i
styleSheet =
  HE.style_
    <<< pure
    <<< HC.text
    <<< (\s -> "\n" <> s <> "\n")
    <<< renderSheet pretty
