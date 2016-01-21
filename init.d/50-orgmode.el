;;; 50-orgmode --- org-mode setup
;;; Commentary:
;;; Code:

(use-package org)
(require 'org)
;; UTF8 bullets for org files
(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

(setq org-directory "~/Dropbox/org/"
      org-agenda-file-regexp "\\.org$"
      org-agenda-files (quote ("~/Dropbox/org/"))
      org-return-follows-link nil ; dont use return to open links
      org-completion-use-ido t)

;; Todo stages
(setq org-todo-keywords
       '((sequence "TODO(t)" "IN PROGRESS(p)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

;; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

;; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

;; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

;; Indent mode
(setq org-startup-indented t)

;; org-capture activate!
;; C-c " to capture
(global-set-key "\C-c\"" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
         "* TODO %? \n  %i\n")
        ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
         "* %?\n%n at %U\n  %i\n")
        ("u" "Link" plain (file+datetree "~/Dropbox/org/url-inbox.org")
        "%i\n")
        )
)
(setq org-default-notes-file "~/Dropbox/org/inbox.org")

;; mobile setup
(setq org-mobile-inbox-for-pull "~/Dropbox/mobile-inbox.org"
      org-mobile-directory "~/Dropbox/MobileOrg")

;; publish to html
(setq org-publish-project-alist
      '(
	("org"
	 :base-directory "~/Dropbox/org/"
	 :publishing-directory "~/sites/addiktit.net/www/org"
	 :publishing-function org-publish-org-to-html
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=\"stylesheet\" href=\"/mystyle.css\" type=\"text/css\"/>")
	))

;; publish files automatically every day
;(run-at-time 86400 86400 'org-publish-all)

;;; 50-orgmode.el ends here
