

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'cl-lib)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb"
           "#81d4fa" "#263238"))
 '(company-idle-delay 0)
 '(company-quickhelp-max-lines 20)
 '(company-require-match nil)
 '(counsel-find-file-ignore-regexp "\\(?:\\`\\|[/\\]\\)\\(?:[#.]\\)")
 '(cov-coverage-mode t)
 '(custom-enabled-themes '(kaolin-aurora))
 '(custom-safe-themes
   '("b95f61aa5f8a54d494a219fcde9049e23e3396459a224631e1719effcb981dbd"
     "b5fab52f16546a15f171e6bd450ff11f2a9e20e5ac7ec10fa38a14bb0c67b9ab"
     "788121c96b7a9b99a6f35e53b7c154991f4880bb0046a80330bb904c1a85e275"
     "c335adbb7d7cb79bc34de77a16e12d28e6b927115b992bccc109fb752a365c72"
     "74e2ed63173b47d6dc9a82a9a8a6a9048d89760df18bc7033c5f91ff4d083e37"
     "e70e87ad139f94d3ec5fdf782c978450fc2cb714d696e520b176ff797b97b8d2"
     "603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961"
     "257de69e8cc7ffaf40ed1ba4abbd8d4cb1db6526a3557a9526f321306b279355"
     "f681100b27d783fefc3b62f44f84eb7fa0ce73ec183ebea5903df506eb314077"
     "05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926"
     "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940"
     "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b"
     "06ed754b259cb54c30c658502f843937ff19f8b53597ac28577ec33bb084fa52"
     "e266d44fa3b75406394b979a3addc9b7f202348099cfde69e74ee6432f781336"
     "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428"
     "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34"
     "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3"
     "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c"
     "f00a605fb19cb258ad7e0d99c007f226f24d767d01bf31f3828ce6688cbdeb22"
     "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3"
     "f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a"
     "5a00018936fa1df1cd9d54bee02c8a64eafac941453ab48394e2ec2c498b834a"
     "e8567ee21a39c68dbf20e40d29a0f6c1c05681935a41e206f142ab83126153ca"
     "a131602c676b904a5509fff82649a639061bf948a5205327e0f5d1559e04f5ed"
     "2ce76d65a813fae8cfee5c207f46f2a256bac69dacbb096051a7a8651aa252b0"
     "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3"
     "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041"
     "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa"
     "1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176"
     "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e"
     default))
 '(display-line-numbers 'relative)
 '(ediff-merge-split-window-function 'split-window-horizontally)
 '(ethan-wspace-errors '(many-nls-eof eol tabs))
 '(evil-collection-mode-list
   '(2048-game ag alchemist anaconda-mode apropos arc-mode atomic-chrome
               auto-package-update beginend bluetooth bm bookmark
               (buff-menu "buff-menu") bufler calc calendar cider
               cmake-mode color-rg comint company compile consult
               corfu crdt (custom cus-edit) cus-theme dashboard
               daemons deadgrep debbugs debug devdocs dictionary
               diff-hl diff-mode dired dired-sidebar disk-usage distel
               doc-view docker ebib ebuku edbi edebug ediff eglot
               elpaca ement explain-pause-mode eldoc elfeed elisp-mode
               elisp-refs elisp-slime-nav embark emms emoji epa ert
               eshell eval-sexp-fu evil-mc eww fanyi finder flycheck
               flymake forge free-keys geiser ggtags git-timemachine
               gited gnus go-mode grep guix hackernews helm help
               helpful hg-histedit hungry-delete ibuffer
               (image image-mode) image-dired image+ imenu imenu-list
               (indent "indent") indium info ivy js2-mode leetcode
               lispy lms log-edit log-view lsp-ui-imenu lua-mode
               kotlin-mode macrostep man magit-section magit-todos
               markdown-mode monky mpc mpdel mu4e mu4e-conversation
               neotree newsticker notmuch nov omnisharp org
               org-present org-roam osx-dictionary outline p4
               (package-menu package) pass (pdf pdf-view) popup proced
               (process-menu simple) prodigy profiler python quickrun
               racer racket-describe realgud reftex replace restclient
               rg ripgrep rjsx-mode robe rtags ruby-mode scheme
               scroll-lock selectrum sh-script shortdoc simple
               simple-mpc slime sly snake so-long speedbar tab-bar
               tablist tabulated-list tar-mode telega
               (term term ansi-term multi-term) tetris thread tide
               timer-list transmission trashed tuareg typescript-mode
               vc-annotate vc-dir vc-git vdiff vertico view vlf vterm
               vundo w3m wdired wgrep which-key woman xref xwidget
               yaml-mode youtube-dl zmusic
               (ztree ztree-diff ztree-dir)))
 '(evil-complete-all-buffers nil)
 '(evil-disable-insert-state-bindings t)
 '(evil-intercept-maps '((edebug-mode-map) (info-mode-map)))
 '(evil-jumps-pre-jump-hook '(push-mark))
 '(evil-overriding-maps '((dired-mode-map . normal)))
 '(evil-want-keybinding t)
 '(fci-rule-color "#37474f")
 '(flycheck-pycheckers-checkers '(pylint mypy2 mypy3))
 '(flycheck-pylintrc ".pylintrc")
 '(flycheck-python-mypy-executable nil)
 '(flycheck-python-pycompile-executable nil)
 '(global-company-mode t)
 '(global-hl-line-mode t)
 '(grep-command "grep -rin -C 2")
 '(hl-sexp-background-color "#1c1f26")
 '(httpd-port 8090)
 '(initial-buffer-choice 'remember-notes)
 '(ivy-initial-inputs-alist
   '((counsel-minor . "^+") (counsel-package . "^+")
     (counsel-org-capture . "^") (counsel-M-x . "")
     (counsel-describe-symbol . "^") (org-refile . "^")
     (org-agenda-refile . "^") (org-capture-refile . "^")
     (Man-completion-table . "^") (woman . "^")))
 '(jedi:key-goto-definition "C-.")
 '(jenkins-url "https://jenkins.local.mobidev.biz/")
 '(js-curly-indent-offset 0)
 '(js-expr-indent-offset 0)
 '(js-indent-level 4)
 '(linum-relative-backend 'linum-mode)
 '(linum-relative-current-symbol "")
 '(linum-relative-global-mode t)
 '(mode-line-format
   '("%e" mode-line-front-space
     (:propertize
      ("" mode-line-mule-info mode-line-client mode-line-modified
       mode-line-remote)
      display (min-width (5.0)))
     mode-line-frame-identification mode-line-buffer-identification
     "   " mode-line-position evil-mode-line-tag (vc-mode vc-mode)
     "  " mode-line-misc-info mode-line-end-spaces))
 '(mode-require-final-newline t)
 '(org-babel-load-languages '((emacs-lisp . t) (C . t)))
 '(org-todo-keyword-faces '(("IN_PROGRES" . "tomato")))
 '(org-todo-keywords '((sequence "TODO" "IN_PROGRES" "DONE")))
 '(package-selected-packages
   '(cov evil-collection lsp-pyright rust-mode ruff-format isortify
         virtualenvwrapper afternoon-theme telega kaolin-themes
         kanagawa-theme lua-mode material-theme unicode-escape swiper
         python-mode dockerfile-mode deadgrep dracula-theme counsel
         racket-mode web-mode flycheck flyspell-correct markdown-mode
         magit python-pytest lsp-ui lsp-mode python-black cheat-sh
         js2-mode python-docstring vue-mode typescript-mode 2048-game
         importmagic flyspell-correct-ivy python-info impatient-mode
         simple-httpd markdown-mode+ company-edbi docker-compose-mode
         evil-mc-extras multiple-cursors smooth-scrolling exwm
         helm-pydoc less-css-mode org ethan-wspace multi-web-mode
         mmm-mode fill-column-indicator evil company-jedi
         company-irony-c-headers company-irony))
 '(pos-tip-background-color "#2E2A29")
 '(pos-tip-foreground-color "#d4d4d6")
 '(projectile-project-search-path '("~/projects/tochka" "~/projects/personal"))
 '(py-auto-complete-p nil)
 '(py-autopep8-options '("--hang-closing"))
 '(py-closing-list-dedents-bos t)
 '(py-complete-ac-sources nil)
 '(py-isort-options nil)
 '(python-black-extra-args '("--skip-string-normalization"))
 '(python-environment-directory "~/.virtualenvs/")
 '(python-indent-def-block-scale 1)
 '(python-shell-interpreter "python")
 '(pyvenv-mode t)
 '(pyvenv-tracking-mode t)
 '(require-final-newline t)
 '(show-trailing-whitespace t)
 '(split-height-threshold nil)
 '(split-width-threshold 160)
 '(toml-ts-mode-indent-offset 4)
 '(undo-tree-auto-save-history nil)
 '(undo-tree-visualizer-diff t)
 '(undo-tree-visualizer-timestamps t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#f36c60") (40 . "#ff9800") (60 . "#fff59d") (80 . "#8bc34a")
     (100 . "#81d4fa") (120 . "#4dd0e1") (140 . "#b39ddb")
     (160 . "#f36c60") (180 . "#ff9800") (200 . "#fff59d")
     (220 . "#8bc34a") (240 . "#81d4fa") (260 . "#4dd0e1")
     (280 . "#b39ddb") (300 . "#f36c60") (320 . "#ff9800")
     (340 . "#fff59d") (360 . "#8bc34a")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-log-types '((comp)))
 '(web-mode-enable-optional-tags t)
 '(which-function-mode nil)
 '(whitespace-style
   '(face trailing tabs spaces lines newline empty indentation
          space-after-tab space-before-tab space-mark tab-mark
          newline-mark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:foreground "SeaGreen" :slant normal))))
 '(font-lock-comment-face ((t (:foreground "dark khaki" :slant normal))))
 '(font-lock-doc-face ((t nil)))
 '(line-number-current-line ((t (:background "#44475a" :foreground "gray"))))
 '(mmm-default-submode-face ((t nil))))

(add-to-list 'load-path "~/.emacs.d/conf")
(load "base.el")
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
