(setq-default indent-tabs-mode nil)
(require 'cl-lib)
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-klere-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/heroku-theme")

; HELM COMPANY
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

;(setq py-autopep8-options '("--max-line-length=120"))
;(require 'py-autopep8)
(require 'fill-column-indicator)
(defun my/python-mode-hook ()
  (add-to-list 'company-backends #'company-tabnine)
  (add-hook 'before-save-hook 'py-isort-before-save)
  (python-docstring-mode))
  ;(fci-mode))

  ;(add-to-list 'company-backends 'company-jedi))

(require 'web-mode)
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

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'which-func-mode)
(add-hook 'python-mode-hook 'importmagic-mode)
(add-hook 'python-mode-hook 'my/python-mode-hook)
(setq jedi:complete-on-dot t)
(add-hook 'after-init-hook 'global-company-mode)
;(company-quickhelp-mode 1)
;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'magit)
(require 'evil)
(evil-mode 1)
(require 'evil-surround)
(global-evil-surround-mode 1)

(add-to-list 'load-path
	     "~/.emacs.d/elpa/yasnippet-snippets-0.4/"
	     "~/.emacs.d/elpa/yasnippet-0.13.0/")
(require 'yasnippet)
(yas-global-mode 1)

(global-flycheck-mode)
(setq-default flycheck-flake8-maximum-line-length 120)
(setq flycheck-emacs-lisp-load-path 'inherit)

(add-to-list
 'default-frame-alist
 '(font . "JuliaMono-11"))
;(set-default-font "Roboto Mono-11" nil t)
;(set-default-font "Mononoki-12" nil t)
;(set-face-attribute 'default nil :height 100)
;(set-default-font "JuliaMono-12" nil t)


(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(require 'linum-relative)
(linum-on)

(setq read-file-name-completion-ignore-case t)
(require 'ido)
(ido-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(display-time-mode)
(require 'smart-mode-line)
(display-time-mode)
(require 'smart-mode-line)
(setq powerline-arrow-shape 'curve)
(setq powerline-default-separator-dir '(right . left))
(setq sml/theme 'light-powerline)
(setq sml/mode-width 0)
(setq sml/name-width 20)
(rich-minority-mode 1)
(setf rm-blacklist "")
(sml/setup)
(setq column-number-mode t)

;; KEYboard
(global-set-key (kbd "C-<tab>") 'company-complete)
(global-set-key (kbd "C-x g") 'magit-status)
(with-eval-after-load "python"
  (define-key python-mode-map (kbd "C-c C-d") 'helm-pydoc))

(show-paren-mode 1)
(setq show-paren-delay 0)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
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
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(global-set-key (kbd "<f5>") #'deadgrep)
(setq-default indent-tabs-mode nil)
(require 'edbi)
;; In my .emacs
(setenv "PERL5LIB" (concat "/home/rostyslav/perl5/lib/perl5" ":"
			   (getenv "PERL5LIB")))
(global-undo-tree-mode)

(setq byte-compile-warnings '(cl-functions))
(require 'loadhist)
(file-dependents (feature-file 'cl))


(venv-workon "default")
;;; base.el ends here
