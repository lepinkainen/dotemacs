;;; 20-windows --- windows-specific setup
;;; Commentary:
;;; Code:

(if mswindows-p
    (setq tramp-default-method "plink"))
(setq tramp-default-user "shrike")

;;; 20-windows.el ends here
