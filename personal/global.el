;; Always open version-controlled symlinked files without prompting
(setq vc-follow-symlinks t)
;; Remove all trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; I don't like lines to be highlighted when they're over 80 chars
(setq whitespace-line-column 250)
;; No more spellchecking in code files
(add-hook 'prog-mode-hook 'turn-off-flyspell t)
