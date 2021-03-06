(deftheme bubbleberry
  "Created 2014-05-18.")

(custom-theme-set-variables
 'bubbleberry
 '(linum-format "%3i"))

(custom-theme-set-faces
 'bubbleberry
 '(region ((t (:background "#151515"))))
 '(cursor ((t (:background "#EEEEEE"))))
 '(fringe ((t (:background "#2F2F2F" :foreground "#FFFFFF"))))
 '(linum ((t (:background "#202020" :foreground "#777777" :box nil :height 100))))
 '(minibuffer-prompt ((t (:foreground "#9489C4" :weight bold))))
 '(minibuffer-message ((t (:foreground "#FFFFFF"))))
 '(mode-line ((t (:foreground "#BBBBBB" :background "#191919"))))
 '(mode-line-inactive ((t (:foreground "#777777" :background "#303030" :weight light :box nil :inherit (mode-line)))))
 '(font-lock-keyword-face ((t (:foreground "#B8E9CB"))))
 '(font-lock-type-face ((t (:foreground "#C5B3FD"))))
 '(font-lock-constant-face ((t (:foreground "#C5B3FD"))))
 '(font-lock-variable-name-face ((t (:foreground "#ADCEFD"))))
 '(font-lock-builtin-face ((t (:foreground "#6767AE"))))
 '(font-lock-string-face ((t (:foreground "#B3DADC"))))
 '(font-lock-comment-face ((t (:foreground "#9AACCB"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#9AACCB"))))
 '(font-lock-preprocessor-face ((t (:foreground "#B8E9CB"))))
 '(font-lock-reference-face ((t (:foreground "#000000"))))
 '(font-lock-negation-char-face ((t (:foreground "#000000"))))
 '(font-lock-function-name-face ((t (:foreground "#ADCEFD"))))
 '(font-lock-doc-face ((t (:foreground "#AAAAAA"))))
 '(font-lock-doc-string-face ((t (:foreground "#496B83"))))
 '(flymake-errline ((t (:foreground "#EE8888" :background nil :underline nil))))
 '(flymake-warnline ((t (:foreground "#8888FF" :background "#303030" :underline nil))))
 '(tooltip ((default nil) (nil nil)))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(button ((t (:inherit (link)))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#FF6600"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box nil (t (:inherit (highlight)))))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "#003453")) (((class color) (min-colors 88) (background dark)) (:background "#003450")) (((class color) (min-colors 16) (background light)) (:background "#003450")) (((class color) (min-colors 16) (background dark)) (:background "#004560")) (((class color) (min-colors 8)) (:foreground "#000000" :background "#00FF00")) (t (:inverse-video t))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "#999999")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "#999999")) (((class color) (min-colors 8) (background light)) (:foreground "#00ff00")) (((class color) (min-colors 8) (background dark)) (:foreground "#ffff00"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "#ff0000")) (((class color) (background dark)) (:background "#ff0000")) (t (:inverse-video t))))
 '(default ((t (:foreground "#CCCCCC" :background "#202020")))))

(provide-theme 'bubbleberry)
