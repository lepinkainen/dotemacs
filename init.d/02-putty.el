;;; 02-putty --- Putty setup
;;; Commentary:
;; Ugly putty fix from http://emacswiki.org/emacs/PuTTY

;;; Code:
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)

;;; 02-putty.el ends here
