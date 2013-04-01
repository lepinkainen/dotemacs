;; Ugly putty fix from http://emacswiki.org/emacs/PuTTY
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)
