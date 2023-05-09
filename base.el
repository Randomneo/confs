(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'load-path
 	     "~/.emacs.d/custom/")

(require 'pyvenv)
;(require 'web-mode)
(require 'evil)
(require 'evil-surround)
(require 'yasnippet)
(require 'flyspell-correct-ivy)
(require 'ace-jump-mode)
(require 'ido)
(require 'init)

;;; WEBMODE --------------------------------
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
(setq web-mode-engines-alist
      '(("django"       . "\\.html\\'")))


;;; PYTHON ---------------------------------
(setq jedi:complete-on-dot t)

(pyvenv-workon "default")

(defun my/python-mode-hook ()
  ;(python-black-on-save-mode)
  (add-hook 'before-save-hook 'py-isort-before-save)
  (python-docstring-mode)
  (add-to-list 'company-backends 'company-jedi)
  ;(which-function-mode t)
  (define-key python-mode-map (kbd "C-c t") 'python-pytest-dispatch)
  (define-key python-mode-map (kbd "C-c b") 'python-jump-to-current-classdef)
  (define-key python-mode-map (kbd "C-c C-d") 'helm-pydoc))

(add-hook 'python-mode-hook 'importmagic-mode)
(add-hook 'python-mode-hook 'my/python-mode-hook)
(add-hook 'python-mode-hook 'jedi:setup)


;;; GLOBAL ---------------------------------
(setq-default indent-tabs-mode nil)
(setq-default flycheck-flake8-maximum-line-length 120)
(setq read-file-name-completion-ignore-case t)
(setq flycheck-emacs-lisp-load-path 'inherit)
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
 '(font . "Mononoki 10"))
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

;;; base.el ends here


(require 'magit)
