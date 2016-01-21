;;; 50-yaml --- YAML-mode
;;; Commentary:
;;; Code:

(use-package yaml-mode
  :ensure t)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;;; 50-yaml.el ends here
