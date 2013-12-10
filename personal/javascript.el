;; Javascript mode
;; Use 2 spaces per indentation level
(setq js-indent-level 2)
;; Use JSHint to catch errors
(add-hook 'js-mode-hook 'flymake-jshint-load)
