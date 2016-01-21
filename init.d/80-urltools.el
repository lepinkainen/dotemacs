;;; 80-urltools --- Misc functions for working with urls
;;; Commentary:
;;; Fetch titles for ulrs in the text

;;; Code:
(defun chomp (str)
  "Chomp leading and tailing whitespace from STR."
  (while (string-match "\\`\n+\\|^\\s-+\\|\\s-+$\\|\n+\\'"
		       str)
    (setq str (replace-match "" t t str)))
  str)

(defun remove-newlines (str)
  "Remove all newlines from STR."
  (while (string-match "\n"
		       str)
    (setq str (replace-match "" t t str)))
  str)

(defun get-url-title ()
  "Read URL at cursor and append its title to the end of the line."
  (interactive)
  (message "found at point: %s" (thing-at-point 'word))
  (let (pageurl)
    (setq pageurl (thing-at-point 'url))
    ;; Get title of web page, with the help of functions in url.el
    (with-current-buffer (url-retrieve-synchronously pageurl)
      ;; find title by grep the html code
      (goto-char 0)
      (re-search-forward "<title>\\([^<]*\\)</title>" nil t 1)
      (setq web_title_str (match-string 1))
      ;; find charset by grep the html code
      (goto-char 0)
      ;; find the charset, assume utf-8 otherwise
      (if (re-search-forward "charset=\\([-0-9a-zA-Z]*\\)" nil t 1)
          (setq coding_charset (downcase (match-string 1)))
        (setq coding_charset "utf-8")
        ;; decode the string of title.
        (setq web_title_str (decode-coding-string web_title_str (intern
                                                                 coding_charset)))
        )
      )
    (end-of-line)
    (insert (concat " - " (chomp
                           (remove-newlines web_title_str))))
    )
  )

(defun get-page-title (url)
  "Request an URL and insert it and it's title at cursor."
  (interactive "sURL: ")

  ;; Get title of web page, with the help of functions in url.el
  (with-current-buffer (url-retrieve-synchronously url)
    ;; find title by grep the html code
    (goto-char 0)
    (re-search-forward "<title>\\([^<]*\\)</title>" nil t 1)
    (setq web_title_str (match-string 1))
    ;; find charset by grep the html code
    (goto-char 0)
    ;; find the charset, assume utf-8 otherwise
    (if (re-search-forward "charset=\\([-0-9a-zA-Z]*\\)" nil t 1)
        (setq coding_charset (downcase (match-string 1)))
      (setq coding_charset "utf-8")
    ;; decode the string of title.
    (setq web_title_str (decode-coding-string web_title_str (intern
                                                             coding_charset)))
    )
    (message (concat "title is: " web_title_str))
    )
  (insert (concat url " - " web_title_str ))
  )

;;; 80-urltools.el ends here
