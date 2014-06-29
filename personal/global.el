;; Always open version-controlled symlinked files without prompting
(setq vc-follow-symlinks t)

;; Remove all trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; I don't like lines to be highlighted when they're over 80 chars
(setq whitespace-line-column 250)

;; No more spellchecking in code files
(add-hook 'prog-mode-hook 'turn-off-flyspell t)

;; Set theme
(load-theme 'sanityinc-tomorrow-eighties t)

;; Override Prelude default programming modes
(defun my-prog-mode-defaults ()
  ;; Show line numbers in margin
  (linum-mode 1)
  (setq-default indent-tabs-mode t)
  (setq tab-width 2))
(add-hook 'prelude-prog-mode-hook 'my-prog-mode-defaults t)

;; Start the emacsserver that listens to emacsclient
(server-start)

;; Turn off the annoying audible bell for invalid actions
(setq ring-bell-function 'ignore)

;; Always enable ido mode and prelude's more powerful matcher in flx-ido
(ido-mode 1)
(flx-ido-mode 1)
