let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20221015/packages.dhall
        sha256:4949f9f5c3626ad6a83ea6b8615999043361f50905f736bc4b7795cba6251927

in  upstream
  with tecton =
    { dependencies =
        [ "arrays"
        , "colors"
        , "either"
        , "foldable-traversable"
        , "integers"
        , "lists"
        , "numbers"
        , "prelude"
        , "record"
        , "strings"
        , "transformers"
        , "tuples"
        ]
    , repo =
        "https://github.com/nsaunders/purescript-tecton.git"
    , version =
        "v0.1.1"
    }
