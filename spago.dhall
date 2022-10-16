{ name = "tecton-halogen"
, license = "MIT"
, repository = "https://github.com/nsaunders/purescript-tecton-halogen"
, dependencies =
  [ "halogen"
  , "media-types"
  , "prelude"
  , "record"
  , "tecton"
  , "transformers"
  , "typelevel-prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
