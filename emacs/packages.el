(use-package deadgrep :ensure t :bind (("<f5>" . 'deadgrep)))
(use-package projectile :ensure t)
(use-package virtualenvwrapper :ensure t)
(use-package yaml-mode :ensure t)
(use-package python-isort :ensure t)

(use-package counsel
  :ensure t
  :after ivy
  :bind (("C-x C-f" . 'counsel-find-file)
	 ("C-s" . 'swiper)
	 ("C-c g" . 'counsel-git)
	 ("M-x" . 'counsel-M-x)))

(use-package ivy
  :ensure t
  :custom (ivy-initial-inputs-alist '((counsel-minor . "^+")
				      (counsel-package . "^+")
				      (counsel-org-capture . "^")
				      (counsel-M-x . "")
				      (counsel-describe-symbol . "^")
				      (org-refile . "^")
				      (org-agenda-refile . "^")
				      (org-capture-refile . "^")
				      (Man-completion-table . "^")
				      (woman . "^")))

  :config (ivy-mode 1))

(use-package treemacs :ensure t)
;; optionally
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom ((lsp-ui-sideline-diagnostic-max-lines 3)
	   (lsp-ui-peek-enable t)))
(use-package lsp-ivy :ensure t :commands lsp-ivy-workspace-symbol)
(use-package flycheck
  :ensure t)
(use-package lsp-mode
  :ensure t
  :after (flycheck lsp-pyright)
  :init (setq lsp-keymap-prefix "s-l")
  :hook
  (python-ts-mode . (lsp))
  (flycheck-mode . (lambda () (flycheck-add-next-checker 'lsp 'python-mypy))))

(use-package lsp-treemacs :ensure t :commands lsp-treemacs-errors-list :after (treemacs))
(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "basedpyright"))

(use-package company
  :ensure t)

(use-package python-pytest
  :ensure t
  :bind (("C-c t" . 'python-pytest-dispatch))
  :after projectile)

(elpaca transient)
(use-package magit
  :ensure t
  :bind (("C-x g" . 'magit-status)))

(use-package ligature
  :ensure t
  :config
  ;; Enable all Iosevka ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("<---" "<--"  "<<-" "<-" "->" "-->" "--->" "<->"
				       "<-->" "<--->" "<---->" "<!--"
                                       "<==" "<===" "<=" "=>" "=>>" "==>" "===>" ">=" "<=>"
				       "<==>" "<===>" "<====>" "<!---"
                                       "<~~" "<~" "~>" "~~>" "::" ":::" "==" "!=" "===" "!=="
                                       ":=" ":-" ":+" "<*" "<*>" "*>" "<|" "<|>" "|>" "+:" "-:"
				       "=:" "<******>" "++" "+++"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))
