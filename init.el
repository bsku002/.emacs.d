(package-initialize)

;; my load paths
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/my-functions")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/themes")


;; requirements
(load-file "~/.emacs.d/functions.el")
(load-file "~/.emacs.d/variables.el")
(load-file "~/.emacs.d/modes.el")
(load-file "~/.emacs.d/org-projects.el")


;; enable modes
(auto-compression-mode t)
(global-hl-line-mode 1)
;(global-linum-mode 1)
;(global-visual-line-mode -1)
(desktop-save-mode 1)
(ido-mode t)
(scroll-bar-mode -1)
;(elpy-enable)
;(electric-pair-mode 1)
;(workgroups-mode 1)
;(auto-complete-mode t)
(yas-global-mode 1)


;; key bindings
(windmove-default-keybindings 'meta)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
;(global-set-key (kbd "M-m") 'my-beginning-of-line)
(global-set-key (kbd "<escape>") 'god-mode-all)
(global-set-key (kbd "C-<backspace>") 'backward-kill-word)
(global-set-key [(home)] 'my-beginning-of-line)
(global-set-key [f11] 'switch-full-screen)
;(global-set-key [C-tab] ')
;(global-set-key [C-S-tab] ')
;(global-set-key (kbd "C-K") ') 
;(global-set-key (kbd "C-[") 'backward-page) ;;conflict
;(global-set-key (kbd "M-[") ') 
;(global-set-key (kbd "M-]") ') 
; C-m newline
; C-j newline and indent
; M-m back to indentation
; M-c capital
; C-o open line (newline but don't move cursor)
; C-t transpose characters
; M-t transpose words
; C-\ multilingual thing
; M \ delete space
; M 
; c insert kill-save

