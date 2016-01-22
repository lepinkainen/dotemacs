;;; package --- Package manager
;;; Commentary:
;;; Emacs package manager settings
;;; Code:

;; Add elpa to ye olde emacs versions
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;; 03-package.el ends here
