;;; 40-which-func --- Display current function on status line
;;; Commentary:
;;Displays current function / org-category etc on the status line

;;; Code:
(require 'which-func)
(add-to-list 'which-func-modes 'org-mode)
(which-function-mode t)
(set-face-attribute 'which-func nil :foreground "Orange")

;; Which-func to header line
;(setq-default header-line-format
;              '((which-func-mode ("" which-func-format " "))))
;(setq mode-line-misc-info
;            ;; We remove Which Function Mode from the mode line, because it's mostly
;            ;; invisible here anyway.
;            (assq-delete-all 'which-func-mode mode-line-misc-info))

;;; 40-which-func.el
