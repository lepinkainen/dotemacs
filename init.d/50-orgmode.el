(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

(setq org-default-notes-file "~/Dropbox/org/inbox.org")

(setq org-directory "~/Dropbox/org/"
      org-agenda-file-regexp "\\.org$"
      org-agenda-files (quote ("~/Dropbox/org/"))
      org-return-follows-link nil ; dont use return to open links
      org-completion-use-ido t)
(setq org-todo-keywords
       '((sequence "TODO(t)" "IN PROGRESS(p)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Indent mode
(setq org-startup-indented t)


(global-set-key "\C-c\"" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
         "* TODO %? \n  %i\n")
        ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
             "* %?\n%n at %U\n  %i\n")))

; mobile setup
(setq org-mobile-inbox-for-pull "~/Dropbox/mobile-inbox.org"
      org-mobile-directory "~/Dropbox/MobileOrg")
; feeds
(setq org-feed-alist
      '("Reddit"
	 "http://www.reddit.com/saved.rss?feed=cf8e82696e1019150103ea28407f8464fc9d7baa&user=theshrike"
	 "~/Dropbox/org/feeds.org" "Saved Reddit links")
      )

(add-to-list 'org-feed-alist '("Reddit inbox"
	 "http://www.reddit.com/message/inbox/.rss?feed=cf8e82696e1019150103ea28407f8464fc9d7baa&user=theshrike"
	 "~/Dropbox/org/feeds.org" "Reddit Inbox"))

; publish to html
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

; publish files automatically every hour
(run-at-time 3600 3600 'org-publish-all)
