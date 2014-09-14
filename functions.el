(defun org-file-from-subtree (&optional name)
  "Cut the subtree currently being edited and create a new file
from it.

If called with the universal argument, prompt for new filename,
otherwise use the subtree title."
  (interactive "P")
  (org-back-to-heading)
  (let ((filename (cond
                   (current-prefix-arg
                    (expand-file-name
                     (read-file-name "New file name: ")))
                   (t
                    (concat
                     (expand-file-name
                      (org-element-property :title
                                            (org-element-at-point))
                      default-directory)
                     ".org")))))
    (org-cut-subtree)
    (find-file-noselect filename)
    (with-temp-file filename
      (org-mode)
      (yank))))

; TODO look at this
(defun org-split-file (file level outfmt)
  "Split FILE into multiple files.
 FILE is Org file to split.
 LEVEL is outline level of headlines.
 OUTFMT is a template for output files."
   (let ((visiting (find-buffer-visiting file))
         (cnt 1)
         cand hl out)
     (with-current-buffer (or visiting (find-file-noselect file))
       (save-excursion
         (save-restriction
           (setq cand (org-map-entries 'point
                                       (format "LEVEL=%s" level)
                                       'file))
           (while (setq hl (pop cand))
             (goto-char hl)
             (setq out (concat
                        (org-replace-escapes outfmt
                                             `(("%n" . ,(format "%s" cnt))))
                        ".org"))
             (org-copy-subtree)
             (with-current-buffer (find-file-noselect out)
               (erase-buffer)
               (org-paste-subtree level)
               (save-buffer))
             (kill-buffer (find-buffer-visiting out))
             (setq cnt (1+ cnt))
             (print out)))))))


(defun my-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only)
                        'bar
                      'box)))

(define-skeleton java-sout-println
  "Print to standard output"
  nil
  "System.out.println(" _ ")")

(defun switch-full-screen ()
      (interactive)
      (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen"))


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


;; (defun remember-review-file ()
;;   "Open `remember-data-file'."
;;   (interactive) 
;;   (find-file-other-window remember-data-file))


;win32 stuff
;(require 'sww)
;(setq sww-sww-cmd "c:/emacs/bin/sww.exe");requires sww.exe

;; (setq auto-mode-alist (append '(("\\.pro$" . prolog-mode)
;;                                      ("\\.pl$" . prolog-mode))
;;                                auto-mode-alist))
