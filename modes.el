;; text mode
(add-hook 'text-mode-hook 
	  (lambda () (abbrev-mode 1))) ;abbrev for text modes
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; god mode
(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)

;; python
;(setq org-babel-python-command "python3")

;; haskell
;(require 'flymake-haskell-multi)
;(add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)
;(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)
;(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;; org mode
(org-babel-do-load-languages
 'org-babel-load-languages
 '( (sh . t)
    (python . t)
    (emacs-lisp . t)
    (dot . t)
    ))

(eval-after-load "org"
  '(require 'ox-odt nil t))
(eval-after-load "org"
  '(require 'ox-html-exercises nil t))

(setq org-babel-use-quick-and-dirty-noweb-expansion t)

(add-hook 'org-mode-hook
          (lambda () (local-set-key (kbd "C-c <left>") #'org-metaleft)))
(add-hook 'org-mode-hook
          (lambda () (local-set-key (kbd "C-c <right>") #'org-metaright)))
(add-hook 'org-mode-hook
          (lambda () (local-set-key (kbd "C-c <up>") #'org-metaup)))
(add-hook 'org-mode-hook
          (lambda () (local-set-key (kbd "C-c <down>") #'org-metadown)))
(setq org-babel-default-header-args
      (cons '(:noweb . "yes")
	    (assq-delete-all :noweb org-babel-default-header-args)))


;; eldoc : show lisp function parameters
(autoload 'turn-on-eldoc-mode "eldoc" nil t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

;; dos batch files
(autoload 'dos-mode "dos" "Edit Dos scripts." t)
(add-to-list 'auto-mode-alist '("\\.bat$" . dos-mode))

;; LISP
; Setup load-path, autoloads and your lisp system
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/clisp")


;; CLOJURE mode
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; csv
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)

;; java mode
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


;; Tramp
;use /ssh:bsku002@login.cs.auckland.ac.nz:742
;(add-to-list 'load-path "~/.emacs.d/tramp-2.2.2/lisp/")
(add-to-list 'Info-default-directory-list "~/.emacs.d/tramp/info/")
(require 'tramp)
(setq tramp-default-method "ssh")
(setq tramp-default-user "bsku002")
(setq tramp-syntax 'url)
(setq tramp-default-user "bsku002"
      tramp-default-host "login.cs.auckland.ac.nz")

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
