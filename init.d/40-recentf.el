;; Use the correct theme based on emacs version
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
