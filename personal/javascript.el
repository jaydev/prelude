;; Javascript mode

;; Use 2 spaces per indentation level
(setq js-indent-level 2)
(setq-default js2-basic-offset 2)

;; Insert debugger
(add-hook 'js-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-d") (lambda () (interactive)
                                             (insert "debugger;")))
            (global-flycheck-mode 1)
            )
          )
