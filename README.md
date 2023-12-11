[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![MELPA](https://melpa.org/packages/quelpa-leaf-badge.svg)](https://melpa.org/#/quelpa-leaf)
[![MELPA Stable](https://stable.melpa.org/packages/quelpa-leaf-badge.svg)](https://stable.melpa.org/#/quelpa-leaf)

<a href="https://github.com/quelpa/quelpa"><img align="right" src="https://github.com/quelpa/quelpa/raw/master/logo/quelpa-logo-h64.png"></a>
# quelpa-leaf

[![CI](https://github.com/quelpa/quelpa-leaf/actions/workflows/test.yml/badge.svg)](https://github.com/quelpa/quelpa-leaf/actions/workflows/test.yml)

If you are using [leaf](https://github.com/conao3/leaf.el) (which can help to simplify your .emacs) you can use the [quelpa](https://github.com/quelpa/quelpa) handler provided by `quelpa-leaf`.

## 💾 Installation

**Requirements**: Emacs 25.1

Assuming you have bootstrapped `quelpa`, install `quelpa-leaf` (which installs
`leaf` as a dependency) and require the library:

```el
(quelpa
 '(quelpa-leaf
   :fetcher git
   :url "https://github.com/quelpa/quelpa-leaf.git"))
(require 'quelpa-leaf)
(quelpa-leaf-init)
```

## 🔧 Usage

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

## 🛠️ Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

### 🔬 Development

To run the test locally, you will need the following tools:

- [Eask](https://emacs-eask.github.io/)
- [Make](https://www.gnu.org/software/make/) (optional)

Install all dependencies and development dependencies:

```sh
$ eask install-deps --dev
```

To test the package's installation:

```sh
$ eask package
$ eask install
```

To test compilation:

```sh
$ eask compile
```

**🪧 The following steps are optional, but we recommend you follow these lint results!**

The built-in `checkdoc` linter:

```sh
$ eask lint checkdoc
```

The standard `package` linter:

```sh
$ eask lint package
```

*📝 P.S. For more information, find the Eask manual at https://emacs-eask.github.io/.*

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE.txt) for details.
