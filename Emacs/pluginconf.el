(provide 'pluginconf) ; Allows file to be sourced by init.el
(advice-add  #'kill-ring-save :after (lambda (&rest _)
                                          (setq deactivate-mark nil)))

;; Treemacs config
(global-set-key [f8] 'treemacs) ; Maps F8 to treemacs
(require 'treemacs-all-the-icons)
(treemacs-load-theme "all-the-icons")
(setq treemacs-width 45)

;; Sublime map
(require 'sublimity)
(require 'sublimity-map)
(require 'sublimity-scroll)
(setq sublimity-map-size 15)
(setq sublimity-map-fraction 0.1)
(setq sublimity-map-text-scale -10)
(sublimity-map-set-delay 0)

;; ORG Mode
(require 'org)
(require 'org-bullets)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROG" "DONE" "OPT" "REC" "|")))
(setq org-todo-keyword-faces
 '(("TODO" . "#7A9268") ("IN-PROG" . "#9567AC") ("DONE" . "#4E545E") ("OPT" . "#5C86B2") ("REC" . "#FFFFFF"))
 )
(setq org-agenda-files '("~/org/"))
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(global-set-key (kbd "M-<SPC>") 'org-todo)
(setq org-deadline-warning-days 7)

;; Emacs-dashboard
(require 'dashboard)
(require 'all-the-icons)
(dashboard-setup-startup-hook)
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 15)
                        (agenda . 15)))
(setq dashboard-banner-logo-title "8 MB & constantly swapping") ; Title
(setq dashboard-startup-banner 'logo) ; Shows logo
(setq dashboard-set-heading-icons t) ; Enables icons
(setq dashboard-set-file-icons t) ; Enables icons
(setq dashboard-center-content t) ; Centers dashboard

;; Helm
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

                                        ; Helm-dash
(defun dashInstallAll()
  (dash-docs-install-docset "AppleScript")
  (dash-docs-install-docset "Arduino")
  (dash-docs-install-docset "Bash")
  (dash-docs-install-docset "Bash")
  (dash-docs-install-docset "Bash")
  (dash-docs-install-docset "C")
  (dash-docs-install-docset "C++")
  (dash-docs-install-docset "CSS")
  (dash-docs-install-docset "CoffeeScript")
  (dash-docs-install-docset "Common_Lisp")
  (dash-docs-install-docset "Docker")
  (dash-docs-install-docset "Emacs_Lisp")
  (dash-docs-install-docset "Go")
  (dash-docs-install-docset "HTML")
  (dash-docs-install-docset "JavaScript")
  (dash-docs-install-docset "LaTeX")
  (dash-docs-install-docset "NodeJS")
  (dash-docs-install-docset "Perl")
  (dash-docs-install-docset "Python_3")
  (dash-docs-install-docset "R")
  (dash-docs-install-docset "React")
  (dash-docs-install-docset "Ruby")
  (dash-docs-install-docset "Rust")
  (dash-docs-install-docset "Swift")
  (dash-docs-install-docset "TypeScript")
  (dash-docs-install-docset "Unity_3D")
  (dash-docs-install-docset "Vim")
  )

(dash-docs-activate-docset "AppleScript")
(dash-docs-activate-docset "Arduino")
(dash-docs-activate-docset "Bash")
(dash-docs-activate-docset "Bash")
(dash-docs-activate-docset "Bash")
(dash-docs-activate-docset "C")
(dash-docs-activate-docset "C++")
(dash-docs-activate-docset "CSS")
(dash-docs-activate-docset "CoffeeScript")
(dash-docs-activate-docset "Common Lisp")
(dash-docs-activate-docset "Docker")
(dash-docs-activate-docset "Emacs Lisp")
(dash-docs-activate-docset "Go")
(dash-docs-activate-docset "HTML")
(dash-docs-activate-docset "JavaScript")
(dash-docs-activate-docset "LaTeX")
(dash-docs-activate-docset "NodeJS")
(dash-docs-activate-docset "Perl")
(dash-docs-activate-docset "Python 3")
(dash-docs-activate-docset "R")
(dash-docs-activate-docset "React")
(dash-docs-activate-docset "Ruby")
(dash-docs-activate-docset "Rust")
(dash-docs-activate-docset "Swift")
(dash-docs-activate-docset "TypeScript")
(dash-docs-activate-docset "Unity 3D")
(dash-docs-activate-docset "Vim")

(setq helm-dash-browser-func 'eww)
(setq helm-dash-min-length 1)


;; Doom modeline
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-height 25)
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-irc t)
(setq doom-modeline-minor-modes nil)
(setq doom-modeline-enable-word-count nil)

;; Vterm
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)
(setq default-directory "~")
(global-set-key [f5] 'vterm)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c C-c") 'mc/edit-lines)

;; Cleanup whitespace
(require 'whitespace-cleanup-mode)
(global-whitespace-cleanup-mode)

;; Format code
(format-all-mode)

;; Code completion

                                        ; Python
(require 'company-jedi)
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)

                                        ; C, C++, Objective C
(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

                                        ; Company
(require 'company)
(setq company-idle-delay 0)
(setq company-dabbrev-downcase 0)
(setq company-minimum-prefix-length 0)
(setq company-show-numbers nil)
(setq company-tooltip-flip-when-above t)
(define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)

(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

(global-company-mode)

                                        ; LSP mode

(use-package lsp-mode
  :hook ((c-mode          ; clangd
          c++-mode        ; clangd
          c-or-c++-mode   ; clangd
          java-mode       ; eclipse-jdtls
          js-mode         ; ts-ls (tsserver wrapper)
          js-jsx-mode     ; ts-ls (tsserver wrapper)
          typescript-mode ; ts-ls (tsserver wrapper)
          python-mode     ; mspyls
          web-mode
          ) . lsp)
  :commands lsp
  :config
  (setq lsp-auto-guess-root t)
  (setq lsp-diagnostic-package :none)             ; disable flycheck-lsp for most modes
  (add-hook 'web-mode-hook #'lsp-flycheck-enable) ; enable flycheck-lsp for web-mode locally
  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-enable-on-type-formatting nil)
  (setq lsp-signature-auto-activate nil)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-enable-folding nil)
  (setq lsp-enable-imenu nil)
  (setq lsp-enable-snippet nil)
  (setq lsp-enable-completion-at-point nil)
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-idle-delay 0.5)
  (setq lsp-prefer-capf t) ; prefer lsp's company-capf over company-lsp
  (add-to-list 'lsp-language-id-configuration '(js-jsx-mode . "javascriptreact")))

(use-package lsp-python-ms
  :hook (python-mode . (lambda () (require 'lsp-python-ms)))
  :config
  (setq lsp-python-ms-executable
        "/Library/Frameworks/Python.framework/Python/python3")
  (setq lsp-python-ms-python-executable-cmd "python3"))

(require 'lsp-ui)
(setq lsp-ui-sideline-show-diagnostics t)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-show t)

(require 'yasnippet)
(yas-global-mode 1)

;; Mu4e mail
                                        ; Mu4e
(require 'smtpmail)
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials
      '(("imap.gmail.com" 587 nil nil))
      smtpmail-default-smtp-server "imap.gmail.com"
      smtpmail-smtp-server "imap.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)

(require 'mu4e)
(setq mu4e-mu-binary "/usr/local/bin/mu")
(setq mu4e-get-mail-command "true")
(setq mu4e-maildir "/Users/Matei/Maildir/")
(setq mu4e-html2text-command "w3m -T text/html")
(setq mu4e-update-interval 15)
(setq mu4e-headers-auto-update t)
(setq mu4e-compose-signature-auto-include nil)
(setq mu4e-compose-in-new-frame t)
(setq mu4e-view-show-addresses t)
(setq mu4e-view-show-images t
      mu4e-show-images t
      mu4e-view-image-max-width 800)
(setq message-kill-buffer-on-exit t)

(require 'mu4e-multi)

(setq mu4e-multi-account-alist
      '(("mcotocel"
         (user-mail-address . "mcotocel@outlook.com")
         (mu4e-drafts-folder . "/Maildir/mcotocel")
         (mu4e-follow-up-folder . "/Maildir/mcotocel")
         (mu4e-hold-folder . "/Maildir/mcotocel")
         (mu4e-refile-folder . "/Maildir/mcotocel")
         (mu4e-sent-folder . "/Maildir/mcotocel")
         (mu4e-trash-folder . "/Maildir/mcotocel"))
        ("mateicotocel"
         (user-mail-address . "mateicotocel@hotmail.co,")
         (mu4e-drafts-folder . "/Maildir/mateicotocel")
         (mu4e-follow-up-folder . "/Maildir/mateicotocel")
         (mu4e-hold-folder . "/Maildir/mateicotocel")
         (mu4e-refile-folder . "/Maildir/mateicotocel")
         (mu4e-sent-folder . "/Maildir/mateicotocel")
         (mu4e-trash-folder . "/Maildir/mateicotocel"))))

(mu4e-multi-enable)

;; Which-key
(require 'which-key)
(which-key-mode)

;; Treesitter
(require 'tree-sitter)
(require 'tree-sitter-langs)
(global-tree-sitter-mode)

;; Centaur tabs
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-S-<tab>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<tab>") 'centaur-tabs-forward)
(global-set-key (kbd "C-S-w") 'kill-buffer-and-window)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-set-modified-marker t)
(centaur-tabs-headline-match)
(setq centaur-tabs-height 30)
(dolist (centaur-face '(centaur-tabs-selected
                        centaur-tabs-selected-modified
                        centaur-tabs-unselected
                        centaur-tabs-unselected-modified))
  (set-face-attribute centaur-face nil :family "SauceCodePro Nerd Font Mono" :height 100))
(defun centaur-tabs-hide-tab (x)
  "Do no to show buffer X in tabs."
  (let ((name (format "%s" x)))
    (or
     ;; Current window is not dedicated window.
     (window-dedicated-p (selected-window))

     ;; Buffer name not match below blacklist.
     (string-prefix-p "*epc" name)
     (string-prefix-p "*scratch*" name)
     (string-prefix-p "*Messages*" name)
     (string-prefix-p "*straight-process*" name)
     (string-prefix-p "*helm" name)
     (string-prefix-p "*Helm" name)
     (string-prefix-p "*Compile-Log*" name)
     (string-prefix-p "*lsp" name)
     (string-prefix-p "*company" name)
     (string-prefix-p "*Flycheck" name)
     (string-prefix-p "*tramp" name)
     (string-prefix-p " *Mini" name)
     (string-prefix-p "*help" name)
     (string-prefix-p "*straight" name)
     (string-prefix-p "*temp" name)
     (string-prefix-p "*Help" name)
     (string-prefix-p "*mybuf" name)
     (string-prefix-p "*pyls::stderr*" name)
     (string-prefix-p "*pyls*" name)
     (string-prefix-p "*clangd::stderr*" name)
     (string-prefix-p "*clangd*" name)
     (string-prefix-p "*dash-docs-errors*" name)
     (string-prefix-p "*format-all-errors*" name)
     (string-prefix-p "*Warnings*" name)
     (string-prefix-p "*Completions*" name)

     ;; Is not magit buffer.
     (and (string-prefix-p "magit" name)
	    (not (file-name-extension name)))
     )))

;; Smartparens
(require 'smartparens-config)
(smartparens-mode)

;; Pretty mode
(require 'pretty-mode)
(global-pretty-mode t)

;; Custom mappings
(define-prefix-command 'custom-map)
(global-set-key (kbd "C-;") 'custom-map) ; Set leader
(define-key custom-map (kbd "C-k") 'helm-show-kill-ring) ; Show kill ring
(define-key custom-map (kbd "C-v") 'yank) ; Paste
(define-key custom-map (kbd "C-c") 'kill-ring-save) ; Copy
(define-key custom-map (kbd "C-x") 'kill-region) ; Cut
(define-key custom-map (kbd "C-s") 'set-mark-command) ; Select
(define-key custom-map (kbd "s") 'helm-swoop) ; Fuzzy search files
(define-key custom-map (kbd "d") 'helm-dash-at-point) ; Docs for word
(define-key custom-map (kbd "C-d") 'helm-dash) ; Docs for word
(define-key custom-map (kbd "c") 'company-mode) ; Toggle company mode
(define-key custom-map (kbd "m") 'sublimity-mode) ; Toggle minimap
