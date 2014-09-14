;; variables

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
