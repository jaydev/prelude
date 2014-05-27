;; Forward one window
;; Prelude sets M-o to a function, so we must reset it
(global-set-key [remap prelude-smart-open-line] (lambda () (interactive) (other-window 1)))

;; Back one window
(global-set-key "\M-i" (lambda () (interactive) (other-window -1)))

;; Backward delete
(global-set-key (kbd "\C-h") 'delete-backward-char)
(global-set-key "\M-h" 'paredit-backward-kill-word)

;; Prelude sets C-h to help in some modes, so we must override again
(add-hook 'ruby-mode-hook (global-set-key "\C-h" 'delete-backward-char))

;; Go To Line
(global-set-key "\M-g" 'goto-line)

;; Move up/down 5 lines at a time
(global-set-key "\M-n" (lambda () (interactive) (next-line 5)))
(global-set-key "\M-p" (lambda () (interactive) (previous-line 5)))

;; Flymake jump to error
;; Prelude sets these keys, so must reset them
(global-set-key [remap sp-backward-down-sexp] 'flymake-goto-prev-error)
(global-set-key [remap sp-up-sexp] 'flymake-goto-next-error)

;; Reset C-a to always go to absolute beginning of line
(global-set-key [remap move-beginning-of-line] 'move-beginning-of-line)

;; Bind C-- to undo
(global-set-key [remap text-scale-decrease] 'undo-tree-undo)
