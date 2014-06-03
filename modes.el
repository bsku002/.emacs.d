;eldoc : show lisp function parameters
(autoload 'turn-on-eldoc-mode "eldoc" nil t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

;dos batch files
(autoload 'dos-mode "dos" "Edit Dos scripts." t)
(add-to-list 'auto-mode-alist '("\\.bat$" . dos-mode))

;; Setup load-path, autoloads and your lisp system
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/clisp")


;CLOJURE mode
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;csv files
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)

; for java mode
(require 'java-find)
(add-hook 'jde-mode-hook
	  (function (lambda ()
		      ;; other stuff here
		      (define-key jde-mode-map
			[(control return)] 'joc-java-find-class-at-point))))

(add-hook 'compilation-mode-hook
	  (function (lambda ()
		      ;; other stuff here
		      (define-key compilation-mode-map
			[(control return)] 'joc-java-find-class-at-point))))

; buffer window sizing
;; (require 'workgroups2)

;; (desktop-save-mode t)       ; save all opened files (or disable it)
;; (setq wg-prefix-key (kbd "C-c z")
;;       wg-restore-associated-buffers nil ; all buffers opened in current WG
;;       wg-use-default-session-file nil   ; turn off for "emacs --daemon"
;;       wg-default-session-file "~/.emacs_files/workgroups"
;;       wg-use-faces nil
;;       wg-morph-on nil)    ; animation off
;; (workgroups-mode 1)       ; Activate workgroups

;; (global-set-key (kbd "<pause>")     'wg-reload-session)
;; (global-set-key (kbd "C-S-<pause>") 'wg-save-session)
;; (global-set-key (kbd "s-z")         'wg-switch-to-workgroup)
;; (global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)
