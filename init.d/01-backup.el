;; BACKUP SETTINGS
(setq backup-directory-alist '(("." . "~/.emacs-backups"))) ; stop leaving backup~ turds scattered everywhere
(setq backup-by-copying t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)
