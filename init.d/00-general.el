;;; general --- Generic setup
;;; Commentary:
;;; Generic setup

;;; Code:
(add-to-list 'load-path "~/.emacs-config/lib/")
(add-to-list 'custom-theme-load-path "~/.emacs-config/themes/")

;; Preferences
(setq inhibit-startup-message 1)
(setq make-backup-files nil)
(setq confirm-kill-emacs 'y-or-n-p)
(setq-default indent-tabs-mode nil) ; indent with spaces
(setq-default tab-width 4)

;; Global modes
(global-font-lock-mode 1)
(line-number-mode 1)
(column-number-mode 1)
;; disable toolbar, scrollbars and menubar
(and (functionp 'tool-bar-mode) (tool-bar-mode -1))
(and (functionp 'scroll-bar-mode) (scroll-bar-mode -1))
(menu-bar-mode -1)

(setq transient-mark-mode t ; show selection when marking text
      font-lock-maximum-decoration t)
(mouse-avoidance-mode 'jump)
(show-paren-mode t)
(delete-selection-mode t) ; delete selected text when overwriting
(global-auto-revert-mode t) ; automatically revert files to what's on disk (Dropbox integration etc.)

;; Disable abbrev-mode
(setq-default abbrev-mode nil)
(subword-mode t)

;; blinky blinky
(blink-cursor-mode t)

;; No yes-or-no, y-or-n instead
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable annoying vc mode
(setq vc-handled-backends nil)
;; Don't ask about symlinked version controlled files
(setq vc-follow-symlinks t)

(setq next-line-add-newlines nil)

;; completions everywhere
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Fix colors in shell
(require 'ansi-color)
;; Tramp-mode
(require 'tramp)

;; cleanup a buffer
;; from: http://emacsblog.org/2007/01/17/indent-whole-buffer
(defun iwb ()
  "Indent whole buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;;; 00-general.el ends here
