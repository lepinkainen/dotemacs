;;; .emacs --- Main dotemacs
;;; Commentary:
;;; Code:

(setq default-directory "~/")

(load "~/.emacs-config/use-package.el")
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;; load init.d files
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
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("/home/users/shrike/Dropbox/org/2buy.org" "/home/users/shrike/Dropbox/org/backup.org" "/home/users/shrike/Dropbox/org/dd4e_evil.org" "/home/users/shrike/Dropbox/org/fappening.org" "/home/users/shrike/Dropbox/org/finance.org" "/home/users/shrike/Dropbox/org/gtd.org" "/home/users/shrike/Dropbox/org/gym.org" "/home/users/shrike/Dropbox/org/habits.org" "/home/users/shrike/Dropbox/org/journal.org" "/home/users/shrike/Dropbox/org/keittioremontti.org" "/home/users/shrike/Dropbox/org/lainanlyhennys.org" "/home/users/shrike/Dropbox/org/notes.org" "/home/users/shrike/Dropbox/org/pathfinder.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure2.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure3.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure4.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure5.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure6.org" "/home/users/shrike/Dropbox/org/pathfinder_adventure7.org" "/home/users/shrike/Dropbox/org/pathfinder_calendar.org" "/home/users/shrike/Dropbox/org/pathfinder_cohort.org" "/home/users/shrike/Dropbox/org/pathfinder_cohort2.org" "/home/users/shrike/Dropbox/org/pathfinder_magnimar.org" "/home/users/shrike/Dropbox/org/pathfinder_player_galapagos.org" "/home/users/shrike/Dropbox/org/pathfinder_rules.org" "/home/users/shrike/Dropbox/org/pathfinder_shoanti.org" "/home/users/shrike/Dropbox/org/poydat.org" "/home/users/shrike/Dropbox/org/puppet_vagrant_presentation.org" "/home/users/shrike/Dropbox/org/seedbox.org" "/home/users/shrike/Dropbox/org/skrollijuttu.org" "/home/users/shrike/Dropbox/org/sotc_adventure1.org" "/home/users/shrike/Dropbox/org/sotc_characters.org" "/home/users/shrike/Dropbox/org/sotc_rulenotes.org" "/home/users/shrike/Dropbox/org/tbf_rumors.org" "/home/users/shrike/Dropbox/org/url-inbox.org" "/home/users/shrike/Dropbox/org/utorrent_oncomplete.org" "/home/users/shrike/Dropbox/org/vauva.org" "/home/users/shrike/Dropbox/org/xxx.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;; .emacs ends here
