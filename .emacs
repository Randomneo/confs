

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'smart-mode-line)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(company-quickhelp-max-lines 20)
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "c4d3cbd4f404508849e4e902ede83a4cb267f8dff527da3e42b8103ec8482008" "9076ed00a3413143191cb9324d9426df38d83fb6dba595afbd43983db1015ef4" "fc524ddf651fe71096d0012b1c34d08e3f20b20fb1e1b972de4d990b2e793339" "b7d967c53f4e3dfc1f847824ffa3f902de44d3a99b12ea110e0ec2fcec24501d" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "f9567e839389f2f0a1ede73d1c3e3bd2c9ed93adaf6bb7d13e579ea2b15fcef8" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "af033d47be9bd0d0ac6aab1ba7eec464c11f63580890a37c72372b993f8b325e" "4455435a66dba6e81d55a843c9c7e475a7a935271bf63a1dfe9f01ed2a4d7572" "f72ccaa311763cb943de5f9f56a0d53b0009b772f4d05f47835aa08011797aa8" "27dd7c2cedf588b6a67a8b8914ad600b625712d5339cb48f7844169eb6ab5c8e" "1884b12dbfa952664f1119bd6d89aaee77b35fbe3c3539381fbdc84a5bd907ef" "60c23c3a831c9f28b10084e8642b7d987d33be3faee8f68d68d1cf6b171041da" "7e362b29da8aa9447b51c2b354d8df439db33b3612ddd5baa34ad3de32206d83" "617341f1be9e584692e4f01821716a0b6326baaec1749e15d88f6cc11c288ec6" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(ethan-wspace-errors (quote (many-nls-eof eol tabs)))
 '(fci-rule-color "#37474f")
 '(grep-command "grep -rin -C 2")
 '(hl-sexp-background-color "#1c1f26")
 '(js-curly-indent-offset 0)
 '(js-expr-indent-offset 0)
 '(linum-relative-backend (quote linum-mode))
 '(linum-relative-current-symbol "")
 '(linum-relative-global-mode t)
 '(mode-require-final-newline t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t))))
 '(package-selected-packages
   (quote
    (evil-mc-extras evil-mc multiple-cursors emojify emms smooth-scrolling exwm wakatime-mode helm-pydoc helm-company pydoc less-css-mode htmlize org-plus-contrib org ethan-wspace yasnippet-snippets web-mode virtualenvwrapper sml-mode smart-mode-line-powerline-theme py-autopep8 multi-web-mode mmm-mode material-theme magit lua-mode linum-relative kaolin-themes flycheck-pycheckers fill-column-indicator evil elpy dracula-theme company-quickhelp company-jedi company-irony-c-headers company-irony ace-jump-mode)))
 '(py-autopep8-options (quote ("")))
 '(require-final-newline t)
 '(show-trailing-whitespace t)
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil)
 '(wakatime-api-key "96c73bb1-965f-438c-b9f3-75e9bf57f672")
 '(wakatime-cli-path "/home/rostislavm/.local/bin/wakatime")
 '(wakatime-python-bin nil)
 '(web-mode-enable-optional-tags t)
 '(whitespace-style
   (quote
    (face trailing tabs spaces lines newline empty indentation space-after-tab space-before-tab space-mark tab-mark newline-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(trailing-whitespace ((t (:background "gray28"))))
 '(whitespace-empty ((t (:background "gray28" :foreground "white"))))
 '(whitespace-indentation ((t (:background "gray" :foreground "firebrick"))))
 '(whitespace-space ((t nil)))
 '(whitespace-space-after-tab ((t (:background "dark gray" :foreground "firebrick"))))
 '(whitespace-space-before-tab ((t (:background "dark gray" :foreground "firebrick"))))
 '(whitespace-trailing ((t (:inherit nil)))))

(add-to-list 'load-path "~/.emacs.d/conf")
(load "base.el")
