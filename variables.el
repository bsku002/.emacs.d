;; variables

;(setq org-babel-python-command "python3")

(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)         
    (sh . t)
    (python . t)
    (emacs-lisp . t)   
    ))

(setq compilation-ask-about-save nil)
(setq desktop-dirname "/home/ben/.emacs.d/")
(setq frame-title-format '(buffer-file-name "%f" ("%b"))) ;Include current buffer name in the title bar

(setq initial-scratch-message ";; I'm sorry, Dave. I'm afraid I can't do that.\n\n")
(setq backup-directory-alist `(("." . "~/.saves")))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
 	     '("melpa" . 
	       "http://melpa.milkbox.net/packages/") t)
(package-initialize)


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
