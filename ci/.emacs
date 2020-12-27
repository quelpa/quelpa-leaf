;; bootstrap quelpa
(setq package-archives nil)
(package-initialize)
(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)))

;; install leaf
(quelpa 'leaf)

;; require the library
(add-to-list 'load-path top-dir)
(require 'quelpa-leaf)

;; test some installs
(leaf grandshell-theme :quelpa)
(leaf ipretty :quelpa t)
(leaf flx-ido :quelpa (:stable t))
(leaf flx-ido :quelpa ((flx-ido) :upgrade t))
(leaf git-modes :quelpa (git-modes :fetcher github :repo "magit/git-modes"))
(leaf git-timemachine :quelpa ((git-timemachine :fetcher gitlab :repo "pidu/git-timemachine") :stable t))
(leaf git-timemachine :quelpa ((git-timemachine :fetcher gitlab :repo "pidu/git-timemachine") :upgrade t))

;; show us the cache
(require 'pp)
(pp quelpa-cache)
