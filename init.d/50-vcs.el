;;; 50-vcs --- Version control stuff
;;; Commentary:
;;; Code:

;; follow symlinks to version controlled files without warning
(setq vc-follow-symlinks t)
;; show commands the vc-mode runs
(setq vc-command-messages t)

;; show git changes
(use-package git-gutter
  :init
  (global-git-gutter-mode t)
  )

;;; 50-vcs.el ends here
