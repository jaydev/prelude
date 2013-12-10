;; Insert debugger
(add-hook 'python-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-d")
                           (lambda () (interactive)
                             (insert "import ipdb; ipdb.set_trace()")))
            )
          )
