;; Forward one window
(global-set-key "\M-o" (lambda () (interactive) (other-window 1)))
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
(add-hook 'python-mode-hook (global-set-key "\C-\M-n" 'flymake-goto-next-error))
(add-hook 'python-mode-hook (global-set-key "\C-\M-p" 'flymake-goto-prev-error))
