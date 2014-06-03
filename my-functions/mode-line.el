(setq my-mode-line-buffer-name
      ;; the buffer name; the file name as a tool tip
      '(:eval (propertize "%b " 'face 'font-lock-keyword-face
			  'help-echo (buffer-file-name)))
      )

(setq my-mode-line-position
      ;; line and column
      (list
       " (" ;; '%02' to set to 2 chars at least; prevents flickering
       "L" 
       (propertize "%02l" 'face 'font-lock-type-face) ","
       (propertize "%02c" 'face 'font-lock-type-face) 
       ")" ))

(setq my-mode-line-relative-position
      ;; relative position, size of file
      (list
       " ["
       (propertize "%p" 'face 'font-lock-constant-face) ;; % above top
       "/"
       (propertize "%I" 'face 'font-lock-constant-face) ;; size
       "]"
       ))

(setq my-mode-line-major-mode
      ;; the current major mode for the buffer.
      (list
       " ["
       
       '(:eval (propertize "%m" 'face 'font-lock-string-face
			   'help-echo buffer-file-coding-system))
       "]"
       ))

(setq my-mode-line-insert-indicator
      ;; insert vs overwrite mode, input-method in a tooltip
      '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
			  'face 'font-lock-preprocessor-face
			  'help-echo (concat "Buffer is in "
					     (if overwrite-mode "overwrite" "insert") " mode"))))

(setq my-mode-line-modified-indicator
      ;; was this buffer modified since the last save?
       '(:eval (when (buffer-modified-p)
		  (propertize " Mod"
			      'face 'font-lock-warning-face
			      'help-echo "Buffer has been modified"))))

(setq my-mode-line-read-only-indicator
      ;; is this buffer read-only?
      '(:eval (when buffer-read-only
		(propertize " RO"
			    'face 'font-lock-type-face
			    'help-echo "Buffer is read-only"))))

(setq my-mode-line-time
      ;; add the time, with the date and the emacs uptime in the tooltip
      '(:eval (propertize (format-time-string " %H:%M")
			  'help-echo
			  (concat (format-time-string "%c; ")
				  (emacs-uptime "Uptime:%hh")))))

(setq my-mode-line-padding
       "%-" ;; fill with '-'
       )

 ;; use setq-default to set it for /all/ modes
(setq-default mode-line-format
      (list
       (propertize "%z") 
       " "
       my-mode-line-buffer-name
       my-mode-line-position
       my-mode-line-relative-position
       my-mode-line-major-mode
       ;my-mode-line-insert-indicator
       my-mode-line-modified-indicator     
       my-mode-line-read-only-indicator
       ;my-mode-line-time
       " ---"
       ;; i don't want to see minor-modes; but if you want, uncomment this:
       minor-mode-alist ;; list of minor modes
       my-mode-line-padding ))