; dired-x adds extra features to dired-mode (C-x d)
(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")))
