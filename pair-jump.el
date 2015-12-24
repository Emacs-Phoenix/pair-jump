
(defun pair-jump-or-tab ()
  (interactive)
  (indent-for-tab-command)
  (let ((after-char (string (char-after)))
        (before-char (string (char-before))))
    (cond ((or (equal after-char "(")
               (equal after-char "{")
               (equal after-char "["))
           (forward-sexp))
          ((or (equal after-char ")")
               (equal after-char "}")
               (equal after-char "]"))
           (backward-sexp)))))
                                        ;(thing-at-point 'char)

(global-set-key [tab] 'pair-jump-or-tab)
(global-set-key (kbd "TAB") 'pair-jump-or-tab)

                                        ;backward-sexp
                                        ;forward-sexp
(provide 'pair-jump)
