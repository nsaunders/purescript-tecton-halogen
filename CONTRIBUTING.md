Contributing
============

Welcome, and thanks for your interest in Tecton. Whether you are new to CSS and PureScript or here to teach us new tricks, we're glad to have you and look forward to your contributions. Listed below are a few ways you can help.

>💡 Is your contribution related to this [Halogen](https://github.com/purescript-halogen/purescript-halogen) adapter library, or might it belong in the main [Tecton](http://github.com/nsaunders/purescript-tecton/tree/master/CONTRIBUTING.md) repository?

Asking questions
----------------
If you have a question, please [open an issue](https://github.com/nsaunders/purescript-tecton-halogen/issues/new?labels=question) to discuss it. This might help us to find a defect; reveal an opportunity to improve the documentation or developer experience; or help someone facing a similar issue in the future.

Reporting defects
-----------------
Please [open an issue](https://github.com/nsaunders/purescript-tecton-halogen/issues/new?labels=defect) to discuss any defects you find.

Improving documentation
-----------------------
Please share any suggestions for improving or adding to the documentation by [submitting a pull request](https://github.com/nsaunders/purescript-tecton-halogen/compare) or [opening an issue](https://github.com/nsaunders/purescript-tecton-halogen/issues/new?labels=documentation).

Sharing resources
-----------------
If you have created a tutorial, auxiliary library, interesting code example, or other resource related to Tecton, please [share it with the PureScript community](https://discourse.purescript.org). Increasing awareness will bring more users (and potential contributors) to the project.

Submitting code
---------------
Pull requests are welcome, but we ask that you [open an issue](https://github.com/nsaunders/purescript-tecton-halogen/issues/new) to discuss your plans before making any significant investment of your valuable time.

### Development environment

You can use [Nix](https://github.com/NixOS/nix) to create a development environment with all required tooling. Simply run `nix-shell` in the root project directory, and you'll have everything you need to get started.

### Making changes

After making any changes, run `purs-tidy format-in-place src` to format the code.

> ⚠️ **NOTE**: Only format the modules in the `src` directory, as `purs-tidy` doesn't seem to format style sheets as intended at this time.

Unit test(s) should accompany each change.

### Preparing your submission

Please verify your changes before submitting a pull request using the following commands:
1. `purs-tidy check src`, which ensures that modules in the `src` directory conform to the project's formatting standards; and
1. `spago -x test.dhall test`, which runs the unit tests.

### Submitting a pull request

When you are ready to [submit a pull request](https://github.com/nsaunders/purescript-tecton-halogen/compare), please make sure to include:
1. a brief description of the change;
1. any design considerations you feel are important; and
1. any ideas you may have to improve upon your submission in the future.
