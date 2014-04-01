; Displays current function / org-category etc on the status line
(require 'which-func)
(add-to-list 'which-func-modes 'org-mode)
(which-function-mode t)
(set-face-attribute 'which-func nil :foreground "Orange")
