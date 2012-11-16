;; Insert debugger
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-d") (lambda () (interactive)
                                             (insert "debugger")))
            )
          )
