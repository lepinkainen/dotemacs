;;; recentf --- Recentf setup
;;; Commentary:
;;; Code:

(if (version< emacs-version "24")
    (progn
      (message "Recentf disabled, emacs < 24")
      )

  (progn
    (require 'recentf)
    (setq recentf-max-saved-items 200
          recentf-max-menu-items 15)
    (recentf-mode t)
    )
)

(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-c C-f")  'recentf-ido-find-file)

;;; 40-recentf.el ends here
