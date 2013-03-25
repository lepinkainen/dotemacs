;; THEME SETUP
(load-file "~/.emacs-config/themes/zenburn-theme.el")

(require 'color-theme) ; emacs-goodies-el package on ubuntu
; this doesn't work for some reason
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(load-theme 'zenburn t)
(color-theme-zenburn)
(set-face-background 'default "black") ; black background, thank you
(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 100) ; use a legible font

(setq frame-title-format (concat  "%b - emacs@" system-name))

;; Identify system type, from https://github.com/nileshk/emacs/blob/master/startup.el
(message (concat "System type: " (symbol-name system-type)))

(defvar mswindows-p (string-match "windows-nt" (symbol-name system-type)))
(defvar cygwin-p (string-match "cygwin" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))
(defvar linux-p (string-match "gnu/linux" (symbol-name system-type)))

(defun my-console-specific ()
  (interactive))

(defun my-windowed-specific ()
  (interactive)
  (progn
    ;; Disable iconifying with C-x C-z
    (global-unset-key (kbd "C-x C-z")))
)

; different settings for term and windowed
(if (eq (symbol-value 'window-system) nil)
    (my-console-specific)
  (my-windowed-specific))

;; EDITING
(setq-default show-trailing-whitespace t) ; hilight trailing whitespace
(setq longlines-show-hard-newlines t) ; displays "\" at the end of lines that wrap
(blink-cursor-mode -1)  ; no blinking cursor
(size-indication-mode t) ; show buffer size in statusbar
(setq scroll-step 1) ; scroll only one line at a time, no jumping
(setq scroll-preserve-screen-position 1) ; pgup/dn return exactly where they left off from

(setq search-highlight t            ;; highlight when searching...
  query-replace-highlight t)        ;; ...and replacing
