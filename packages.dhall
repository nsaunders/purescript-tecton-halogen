let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20221015/packages.dhall
        sha256:4949f9f5c3626ad6a83ea6b8615999043361f50905f736bc4b7795cba6251927

in  upstream
  with tecton =
    { dependencies =
        ( https://raw.githubusercontent.com/nsaunders/purescript-tecton/master/spago.dhall
        ).dependencies
    , repo = "https://github.com/nsaunders/purescript-tecton.git"
    , version = "master"
    }
