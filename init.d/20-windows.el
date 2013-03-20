; windows-specific setup
(if mswindows-p
    (setq tramp-default-method "plink"))
(setq tramp-default-user "shrike")
