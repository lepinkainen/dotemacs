; line number
(require 'linum)
(setq linum-format
      (lambda (line)
	(propertize (format
		     (let ((w (length (number-to-string
				       (count-lines (point-min) (point-max))))))
		       (concat "%" (number-to-string w) "d "))
		     line)
		    'face 'linum)))
