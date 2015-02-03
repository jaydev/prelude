;; Always open version-controlled symlinked files without prompting
(setq vc-follow-symlinks t)

;; Remove all trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; I don't like lines to be highlighted when they're over 80 chars
(setq whitespace-line-column 250)

;; No more spellchecking in code files
(add-hook 'prog-mode-hook 'turn-off-flyspell t)

;; Override Prelude default programming modes
(defun my-prog-mode-defaults ()
  ;; Show line numbers in margin
  (linum-mode 1)
)
(add-hook 'prelude-prog-mode-hook 'my-prog-mode-defaults t)

;; Start the emacsserver that listens to emacsclient
(server-start)

;; Turn off the annoying audible bell for invalid actions
(setq ring-bell-function 'ignore)

;; Trigger html-mode for handlebars files
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . html-mode))
