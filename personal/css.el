;; CSS mode

;; Use 4 spaces per indentation level
(add-hook 'less-css-mode-hook
          (lambda ()
            (setq css-indent-offset 4)))
