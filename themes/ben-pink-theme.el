(deftheme ben-pink
  "Created 2013-05-28.")

(custom-theme-set-variables
 'ben-pink
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"]))

(custom-theme-set-faces
 'ben-pink
 '(cursor ((t (:background "#cccccc" :foreground "#0f0f0f" :underline nil :weight normal))))
 '(fixed-pitch ((t (:underline nil :weight normal :family "PragmataPro"))))
 '(variable-pitch ((t (:family "Sans Serif" :weight normal :underline nil))))
 '(escape-glyph ((t (:weight normal :underline nil :foreground "#d1afdd"))))
 '(minibuffer-prompt ((t (:weight normal :underline nil :foreground "#d1afdd"))))
 '(highlight ((t (:background "#31182d" :underline nil :weight normal))))
 '(region ((t (:weight normal :underline nil :background "#412b3f"))))
 '(shadow ((t (:weight normal :underline nil :foreground "grey70"))))
 '(secondary-selection ((t (:weight normal :underline nil :background "#3f3f3f"))))
 '(trailing-whitespace ((t (:background "#d1afdd" :underline nil :weight normal))))
 '(font-lock-builtin-face ((t (:weight normal :underline nil :foreground "#ddd"))))
 '(font-lock-comment-delimiter-face ((t (:weight normal :underline nil :foreground "#555" :inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "#755273" :underline nil :weight normal))))
 '(font-lock-constant-face ((t (:foreground "#B294BB" :underline nil :weight normal))))
 '(font-lock-doc-face ((t (:weight normal :underline nil :foreground "#a582a3" :inherit (font-lock-string-face)))))
 '(font-lock-function-name-face ((t (:foreground "#EFEFEF" :underline nil :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "#d1afdd" :underline nil :weight normal))))
 '(font-lock-negation-char-face ((t (:weight normal :underline nil :foreground "#cccccc"))))
 '(font-lock-preprocessor-face ((t (:weight normal :underline nil :foreground "#d1afdd" :inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:weight normal :underline nil :inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:weight normal :underline nil :inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#a582a3" :underline nil :weight normal))))
 '(font-lock-type-face ((t (:foreground "#e0e0e0" :underline nil :weight normal))))
 '(font-lock-variable-name-face ((t (:foreground "#787878" :underline nil :weight normal))))
 '(font-lock-warning-face ((t (:weight normal :underline nil :foreground "#c0af7f" :inherit (error)))))
 '(link ((t (:weight normal :underline nil :foreground "#f0dfff"))))
 '(link-visited ((t (:weight normal :underline nil :foreground "#d0bfdf" :inherit (link)))))
 '(button ((t (:foreground "#f0dfff" :underline nil :weight normal))))
 '(fringe ((t (:background "#0f0f0f" :foreground "#585858" :underline nil :weight normal))))
 '(header-line ((t (:weight normal :underline nil :inherit (mode-line)))))
 '(tooltip ((t (:weight normal :underline nil :foreground "#d1afdd" :background "#292929" :inherit (variable-pitch)))))
 '(mode-line ((t (:weight normal :underline nil :box nil :foreground "#d1afdd" :background "#2b2b2b"))))
 '(mode-line-buffer-id ((t (:weight normal :underline nil :foreground "#f0dfff"))))
 '(mode-line-emphasis ((t (:weight normal :underline nil))))
 '(mode-line-highlight ((t (:weight normal :underline nil :box nil))))
 '(mode-line-inactive ((t (:weight normal :underline nil :box nil :foreground "#a582a3" :background "#202020" :inherit (mode-line)))))
 '(isearch ((t (:weight normal :underline nil :foreground "#d1afdd" :background "#2b2b2b"))))
 '(isearch-fail ((t (:weight normal :underline nil :foreground "#d1afdd" :background "#856283"))))
 '(lazy-highlight ((t (:weight normal :underline nil :foreground "#dfafdf" :background "#2f2f2f"))))
 '(match ((t (:weight normal :underline nil :foreground "#dfafdf" :background "#2b2b2b"))))
 '(next-error ((t (:weight normal :underline nil :inherit (region)))))
 '(query-replace ((t (:weight normal :underline nil :inherit (isearch)))))
 '(ido-first-match ((t (:foreground "#dfafdf" :weight bold))))
 '(ido-only-match ((t (:foreground "#dfafdf" :weight bold))))
 '(ido-subdir ((t (:foreground "#a582a3"))))
 '(linum ((t (:foreground "#787878"))))
 '(show-paren-match ((t (:inherit highlight :foreground "#0f0f0f" :background "#a582a3"))))
 '(default ((t (:inherit nil :stipple nil :background "#0f0f0f" :foreground "#cccccc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal)))))

(provide-theme 'ben-pink)
