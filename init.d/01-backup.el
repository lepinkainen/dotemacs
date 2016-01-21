;;; backup --- Backup settings
;;; Commentary:
;;; Backup options

;;; Code:
(setq backup-directory-alist '(("." . "~/.emacs-backups"))) ; stop leaving backup~ turds scattered everywhere
(setq backup-by-copying t
      delete-old-versions -1
      kept-new-versions 6
      kept-old-versions 2
      version-control t
      vc-make-backup-files t)

;;; 01-backup.el ends here
