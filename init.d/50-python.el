; Indent python by 4 spaces
(setq py-indent-offset 4)

; use pychecker.sh for quality test
(setq py-pychecker-command "pychecker.sh"
      py-pychecker-command-args (quote (""))
      python-check-command "pychecker.sh")
