;;; dired --- Dired setup
;;; Commentary:
;;; Code:

;; dired-x adds extra features to dired-mode (C-x d)
(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")))

;;; 50-dired.el ends here
