(defun my-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only)
                        'box
                      'bar)))

;python
;; (setq py-install-directory "/home/ben/.emacs.d/elpa/python-mode-6.1.3/")
;; (add-to-list 'load-path py-install-directory)
;; (require 'python-mode)
;; (setq-default py-shell-name "python3")
;; (setq py-shell-name "python3")
;; (setq py-python-command "python3")
;; (when (featurep 'python) (unload-feature 'python t))
;; (setq-default py-which-bufname "Python3")
;; (setq py-force-py-shell-name-p t)
;; ; switch to the interpreter after executing code
;; (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)

;(setq browse-url-browser-function 'w3m-browse-url)
;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)


;; (setq wg-prefix-key (kbd "C-c z")
;;       wg-restore-associated-buffers nil ; restore all buffers opened in this WG?
;;       wg-use-default-session-file nil   ; turn off for "emacs --daemon"
;;       wg-default-session-file "~/.emacs_files/workgroups"
;;       wg-use-faces nil
;;       wg-morph-on nil)                  ; animation off
;; (setq make-backup-files t)		;turn on backups

;; (setq default-frame-alist
;;       `(
;; 	(scroll-bar-width . 8)        ;scrollbar width
;;  	(tool-bar-lines . nil) ;no toolbar
;; 	(left-fringe)
;; 	(right-fringe . 0)
;; 	))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
 	     '("melpa" . 
	       "http://melpa.milkbox.net/packages/") t)
(package-initialize)



(define-skeleton java-sout-println
  "Print to standard output"
  nil
  "System.out.println(" _ ")")

(defun switch-full-screen ()
      (interactive)
      (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))

;; (defun remember-review-file ()
;;   "Open `remember-data-file'."
;;   (interactive) 
;;   (find-file-other-window remember-data-file))

(defun count-words (&optional begin end)
  "count words between BEGIN and END (region); if no region defined, count words in buffer"
  (interactive "r")
  (let ((b (if mark-active begin (point-min)))
      (e (if mark-active end (point-max))))
    (message "Word count: %s" (how-many "\\w+" b e))))

(defun my-beginning-of-line (&optional n)
  "Documentation pending."
  (interactive "p")
  (let ((st (point))
        (bg (progn
                (beginning-of-line n)
                  (point)))
        (aft (progn
                  (beginning-of-line-text n)
                     (point)))) ;end LET

    (cond ((eq st aft)
              (goto-char bg)))) nil)


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

;win32 stuff
;(require 'sww)
;(setq sww-sww-cmd "c:/emacs/bin/sww.exe");requires sww.exe

;; (setq auto-mode-alist (append '(("\\.pro$" . prolog-mode)
;;                                      ("\\.pl$" . prolog-mode))
;;                                auto-mode-alist))
