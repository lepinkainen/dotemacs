;; Link this file to ~/.emacs

(setq default-directory "~/")

(dolist (file (directory-files "~/.emacs-config/init.d" t ".elc?$"))
  (load (file-name-sans-extension file)))

(when (file-exists-p "~/.emacs-site.el")
  (load "~/.emacs-site.el"))


;; Load host-specific .el setup if it exists
(let ((host-specific-files (concat "~/.emacs-config/" system-name ".el")))
  (if (file-exists-p host-specific-files)
      (load host-specific-files)
    (message (concat "No host specific customizations for " system-name))
  ))

;; Clear echo area
(princ "" t)
