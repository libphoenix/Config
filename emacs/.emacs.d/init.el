(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(global-display-line-numbers-mode t)
 '(ignored-local-variable-values '((git-commit-major-mode . git-commit-elisp-text-mode)))
 '(package-selected-packages '(csharp-mode magit evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "OCRB" :foundry "PfEd" :slant normal :weight normal :height 119 :width normal)))))

;; Hiding menu bar
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq initial-buffer-choice "~/")
(setq auto-save-default nil)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(global-display-line-numbers-mode)
(setq default-tab-width 4)

;; packages

(require 'package)
(add-to-list 'package-archives '("melpa", "https://melpa.org/packages/"))
(package-initialize)

;; evil mode
(require 'evil)
(evil-mode 1)
(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-local-mode 1) ;; Emacs 25
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
