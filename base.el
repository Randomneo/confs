(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'load-path
 	     "~/.emacs.d/custom/")

(setq evil-want-keybinding nil)
(require 'evil-collection)
(require 'evil)
(require 'evil-surround)
(evil-collection-init)

(require 'magit)
;(require 'web-mode)
(require 'yasnippet)
(require 'flyspell-correct-ivy)
(require 'ido)
(require 'init)
(require 'virtualenvwrapper)
;(require 'python-ts-mode)
(require 'python)
(require 'rust-mode)
(require 'lsp)

;;; MODE-ALISTS ----------------------------
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mako\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(defvar web-mode-engines-alist
      '(("django" . "\\.html\\'")))
(add-to-list 'auto-mode-alist '("\\.toml\\'" . toml-ts-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-ts-mode))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-ts-mode))

(add-hook 'rust-mode-hook #'lsp)

;;; PYTHON ---------------------------------
(defvar jedi:complete-on-dot t)

(venv-workon "default")

(defun auto-venv ()
  (venv-workon (file-name-nondirectory (directory-file-name (projectile-project-root)))))


(defun my/python-mode-hook ()
  (isortify-mode)
  (python-docstring-mode)
  (add-to-list 'company-backends 'company-jedi)
  (which-function-mode t)
  (importmagic-mode)
  (jedi:setup))

(define-key python-ts-mode-map "\C-ct" 'python-pytest-dispatch)
; (define-key python-ts-mode-map "\C-c." 'jedi:goto-definition)
; (define-key python-ts-mode-map "\C-c," 'jedi:goto-definition-pop-marker)
(define-key python-mode-map "\C-ct" 'python-pytest-dispatch)
; (define-key comint-mode-map "\C-p" 'comint-previous-input)
; (define-key comint-mode-map "\C-n" 'comint-next-input)
; (add-hook 'python-mode-hook 'my/python-mode-hook)
; (add-hook 'python-ts-mode-hook 'my/python-mode-hook)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'python-ts-mode-hook #'lsp)


;;; GLOBAL ---------------------------------
(setq-default indent-tabs-mode nil)
(setq read-file-name-completion-ignore-case t)
(defvar flycheck-emacs-lisp-load-path 'inherit)
(setq column-number-mode t)
(setq show-paren-delay 0)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(add-hook 'after-init-hook 'global-company-mode)
;(company-quickhelp-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(evil-mode 1)
(global-evil-surround-mode 1)
(yas-global-mode 1)
(global-flycheck-mode)
(global-undo-tree-mode)
(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-wrapper)

(add-to-list
 'default-frame-alist
 '(font . "Mononoki 14"))
 ;'(font . "Liberation Mono 10"))
 ;'(font . "JuliaMono-10"))
;(set-default-font "Roboto Mono-11" nil t)
;(set-default-font "Mononoki-12" nil t)
;(set-face-attribute 'default nil :height 100)
;(set-default-font "JuliaMono-12" nil t)

(ido-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(display-time-mode)

;; KEYboard
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key evil-normal-state-map "u" 'undo-tree-undo)
(define-key evil-normal-state-map "U" 'undo-tree-redo)
(global-set-key (kbd "C-<tab>") 'company-complete)
(global-set-key (kbd "C-x g") 'magit-status)

(show-paren-mode 1)
(ivy-mode 1)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(global-set-key (kbd "<f5>") #'deadgrep)

; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-ts-mode))

;; FLYCHECK

(defvar-local my/flycheck-local-cache nil)

(defun my/flycheck-checker-get (fn checker property)
  (or (alist-get property (alist-get checker my/flycheck-local-cache))
      (funcall fn checker property)))

(advice-add 'flycheck-checker-get :around 'my/flycheck-checker-get)

(add-hook 'lsp-managed-mode-hook
          (lambda ()
            (when (derived-mode-p 'python-mode)
              (setq my/flycheck-local-cache '((lsp . ((next-checkers . (python-mypy python-flake8)))))))))

;;; base.el ends here
