(provide 'general)

;; UI

;(solaire-global-mode +1)
(load-theme 'atom-one-dark t) ; Set theme

; Font
(set-face-attribute 'default nil
                    :family "SauceCodePro Nerd Font Mono"
                    :height 110
                    :weight 'normal
                    :width 'normal)

; Line numbers
(global-display-line-numbers-mode)

;; Other
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1)) ; Disable autoindentation

(save-place-mode 1) ; Remember cursor position

(setq ring-bell-function (lambda () (message ""))) ; Disable beeping

(setq make-backup-files nil) ; Disable backups

; Show selection
(transient-mark-mode 1)
 
; GUI settings
(add-to-list 'default-frame-alist
             '(vertical-scroll-bars . nil))
(setq-default cursor-type 'bar)

(fset 'yes-or-no-p 'y-or-n-p) ; Use y or n instead of yes and no

; Set tab to 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

; Stop 'Cl is deprecated' warning
(setq byte-compile-warnings '(cl-functions))

; Replace selected text when typed
(delete-selection-mode t)

;; Eww
(setq browse-url-browser-function 'eww-browse-url)
(advice-add #'shr-colorize-region :around (defun shr-no-colourise-region (&rest ignore)))
