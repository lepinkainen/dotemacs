;;; 50-linum --- linum mode
;;; Commentary:
;;; Code:

;; line number
(require 'linum)
(setq linum-format
      (lambda (line)
	(propertize (format
		     (let ((w (length (number-to-string
				       (count-lines (point-min) (point-max))))))
		       (concat "%" (number-to-string w) "d "))
		     line)
		    'face 'linum)))

;;; 50-linum.el ends here
