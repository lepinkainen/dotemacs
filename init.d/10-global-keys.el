;; KEYBINDINGS
(global-set-key (kbd "C-c k") 'browse-kill-ring)
; A saner undo key
(global-set-key (kbd "C-z") 'undo)
; goto-line
(global-set-key (kbd "C-c C-g") 'goto-line)
; make F12 switch to .emacs; create if needed
(global-set-key (kbd "<f12>") '(lambda()(interactive)(find-file "~/.emacs")))
; Change how home key works, move to beginning of text
(global-set-key [home] 'beginning-of-line-text)
(substitute-key-definition 'beginning-of-line 'beginning-of-line-text global-map)

; smart-tab for tab
(global-set-key (kbd "TAB") 'smart-tab)

(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (hippie-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
         (hippie-expand nil)
        (indent-for-tab-command)))))
(global-set-key (kbd "TAB") 'smart-tab)
