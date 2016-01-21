;;; 50-modeline --- Simpler modeline
;;; Commentary:
;;; Code:

(use-package smart-mode-line)

;; (setq-default mode-line-format
;;       (list "["
;;             'mode-line-client
;;             "]"
;;             ; Encoding
;;             'mode-line-mule-info
;;             ; */% indicators if the file has been modified
;;             'mode-line-modified
;;             "  "
;;             ; line, column, file %
;;             'mode-line-position
;;             "| "
;;             ; the name of the buffer (i.e. filename)
;;             ; note this gets automatically highlighted
;;             'mode-line-buffer-identification
;;             "  "
;;             'vc-mode
;;             ; major and minor modes in effect
;;             'mode-line-modes
;;             ; if which-func-mode is in effect, display which
;;             ; function we are currently in.
;;             '(which-func-mode ("" which-func-format "--"))
;;             "-%-"
;;             )
;; )

;;; 50-modeline.el ends here
