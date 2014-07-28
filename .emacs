(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "unknown" :family "Monaco"))))
 '(linum ((t (:inherit default :foreground "color-146")))))

;; add haskell-mode for haskell file editing
(add-to-list 'load-path "/usr/share/emacs/site-lisp/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "/usr/share/emacs/site-lisp/haskell-mode/")

;; turn off the scrollbar (only for the X version)
;; (scroll-bar-mode -1)

;; turn line numbers 
(global-linum-mode t)
;; set the line numbers up so that there is a column of space after it
(setq linum-format "%d ")

;; make tabs insert as spaces
(setq-default indent-tabs-mode nil)

;; turn on spell checking for modes that need it
(add-hook 'text-mode-hook 'flyspell-mode)

;; Backups and autosaves
(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))

(make-directory backup-dir t)
(make-directory autosave-dir t)

(setq backup-directory-alist `((".*" . ,backup-dir))
      auto-save-file-name-transforms `((".*" ,autosave-dir t))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)
