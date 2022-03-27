;;; test-install.el --- List out all package archives  -*- lexical-binding: t; -*-
;;; Commentary: Test `quelpa' install capability with `leaf'
;;; Code:

(eask-pkg-init)

(require 'quelpa-leaf)
(quelpa-leaf-init)

;; test some installs
(leaf grandshell-theme :quelpa)
(leaf ipretty :quelpa t)
(leaf flx-ido :quelpa (:stable t))
(leaf flx-ido :quelpa ((flx-ido) :upgrade t))
(leaf git-modes :quelpa (git-modes :fetcher github :repo "magit/git-modes"))
(leaf git-timemachine :quelpa ((git-timemachine :fetcher gitlab :repo "pidu/git-timemachine") :stable t))
(leaf git-timemachine :quelpa ((git-timemachine :fetcher gitlab :repo "pidu/git-timemachine") :upgrade t))

;;; test-install.el ends here