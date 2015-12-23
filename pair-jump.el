
(defun pair-jump-or-tab ()
  (interactive)
  (message "try pair")
  (indent-for-tab-command)
  )

(global-set-key [tab] 'pair-jump-or-tab)
(global-set-key (kbd "TAB") 'pair-jump-or-tab)


(provide 'pair-jump)
