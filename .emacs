;;;Code set by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(ansi-term-color-vector [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(background-color "#202020")
 '(background-mode dark)
 '(blink-cursor-mode nil)
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes (quote (ben-pink)))
 '(custom-safe-themes (quote ("c317a7ff76d870ca327857f1e771f9b92001a585364ec9c5bb378ab885c25123" "033ebb7a2a3ac4a80590adbeea04f53bdc1584e47999bee8824990b9540794ce" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(custom-theme-directory "~/.emacs.d/themes")
 '(default-input-method "latin-1-prefix")
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#efefef")
 '(foreground-color "#cccccc")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-font-lock-mode t nil (font-lock))
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc-mode)))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#eee8d5" . 0) ("#B4C342" . 20) ("#69CABF" . 30) ("#69B7F0" . 50) ("#DEB542" . 60) ("#F2804F" . 70) ("#F771AC" . 85) ("#eee8d5" . 100))))
 '(inhibit-startup-screen t)
 '(main-line-color1 "#1e1e1e")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(org-default-notes-file "~/Documents/notes.org")
 '(org-directory "~/Documents/org")
 '(org-startup-folded (quote content))
 '(powerline-color1 "#1e1e1e")
 '(powerline-color2 "#111111")
 '(remember-data-file "~/Documents/notes.org")
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#c82829") (40 . "#f5871f") (60 . "#eab700") (80 . "#718c00") (100 . "#3e999f") (120 . "#4271ae") (140 . "#8959a8") (160 . "#c82829") (180 . "#f5871f") (200 . "#eab700") (220 . "#718c00") (240 . "#3e999f") (260 . "#4271ae") (280 . "#8959a8") (300 . "#c82829") (320 . "#f5871f") (340 . "#eab700") (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(scroll-bar ((t (:background "gray3" :foreground "dark slate blue" :weight thin :width condensed)))))

;;; User stuff starts here
(load-file "~/.emacs.d/init.el")
