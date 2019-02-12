;;; multi-web-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "multi-web-mode" "multi-web-mode.el" (23621
;;;;;;  60944 61860 867000))
;;; Generated autoloads from multi-web-mode.el

(autoload 'multi-web-mode "multi-web-mode" "\
Enables the multi web mode chunk detection and indentation

\(fn &optional ARG)" t nil)

(defvar multi-web-global-mode nil "\
Non-nil if Multi-Web-Global mode is enabled.
See the `multi-web-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `multi-web-global-mode'.")

(custom-autoload 'multi-web-global-mode "multi-web-mode" nil)

(autoload 'multi-web-global-mode "multi-web-mode" "\
Toggle Multi-Web mode in all buffers.
With prefix ARG, enable Multi-Web-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Multi-Web mode is enabled in all buffers where
`multi-web-mode-maybe' would do it.
See `multi-web-mode' for more information on Multi-Web mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("multi-web-mode-pkg.el" "mweb-example-config.el")
;;;;;;  (23621 60944 53860 789000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; multi-web-mode-autoloads.el ends here
