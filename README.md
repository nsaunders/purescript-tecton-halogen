# Tecton 🔗 Halogen

[![CI](https://github.com/nsaunders/purescript-tecton-halogen/workflows/CI/badge.svg?branch=master)](https://github.com/nsaunders/purescript-tecton-halogen/actions?query=workflow%3ACI+branch%3Amaster)
[![Latest release](http://img.shields.io/github/release/nsaunders/purescript-tecton-halogen.svg)](https://github.com/nsaunders/purescript-tecton-halogen/releases)
[![Package set](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/nsaunders/purescript-tecton-halogen/master/meta/registry-status.json)](https://github.com/purescript/registry/tree/main/package-sets)

This library integrates [Tecton](https://github.com/nsaunders/purescript-tecton)
and [Halogen](https://github.com/purescript-halogen/purescript-halogen),
allowing you to create Tecton style sheets and inline styles under Halogen's
HTML model.

Examples can be found in the [tests](test/Main.purs).

## Installation

The preferred installation method is [Spago](https://github.com/purescript/spago).

```sh
spago install tecton-halogen
```

If your project's package set doesn't include `tecton-halogen`, then add it in
your `packages.dhall` file first. For example:

```dhall
let upstream = https://raw.githubusercontent.com/purescript/package-sets/psc-0.15.4-20221010/src/packages.dhall
in  upstream
  with tecton-halogen =
    { dependencies =
        [ "halogen"
        , "prelude"
        , "record"
        , "tecton"
        , "transformers"
        , "typelevel-prelude"
        ]
    , repo =
        "https://github.com/nsaunders/purescript-tecton-halogen.git"
    , version =
        "master"
    }
```
