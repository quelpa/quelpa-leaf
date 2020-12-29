<a href="https://github.com/quelpa/quelpa"><img align="right" src="https://github.com/quelpa/quelpa/raw/master/logo/quelpa-logo-h64.png"></a>
# quelpa-leaf

[![Build Status](https://travis-ci.org/quelpa/quelpa-leaf.svg?branch=master)](https://travis-ci.org/quelpa/quelpa-leaf)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

If you are using [leaf](https://github.com/conao3/leaf.el) (which can help to simplify your .emacs) you can use the [quelpa](https://github.com/quelpa/quelpa) handler provided by `quelpa-leaf`.

## Installation

**Requirements**: Emacs 25.1

Assuming you have bootstrapped `quelpa`, install `quelpa-leaf` (which installs
`leaf` as a dependency) and require the library:

```el
(quelpa
 '(quelpa-leaf
   :fetcher git
   :url "https://github.com/quelpa/quelpa-leaf.git"))
(require 'quelpa-leaf)
```

## Usage

After that it is possible to call `leaf` with the `:quelpa` keyword:

```cl
;; installs abc-mode with quelpa
(leaf abc-mode :quelpa)

;; does the same (`t' is optional)
(leaf abc-mode :quelpa t)

;; again... (if the package would have another name)
(leaf abc-mode :quelpa abc-mode)

;; passes upgrade parameter to quelpa
(leaf abc-mode :quelpa (:upgrade t))

;; uses the given recipe
(leaf abc-mode
  :quelpa (abc-mode :fetcher github :repo "mkjunker/abc-mode"))

;; recipe with plist arguments
(leaf abc-mode
  :quelpa ((abc-mode :fetcher github :repo "mkjunker/abc-mode") :upgrade t))
```

The `quelpa` handler is compatible with [MELPA's recipe format](https://github.com/melpa/melpa#recipe-format). You may want to check the optional properties not mentioned above.

## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
