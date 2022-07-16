(setq inhibit-startup-message t) ;; removes startup message

(scroll-bar-mode -1) ;; scroll bar off
(tool-bar-mode -1) ;; tool bar off
(tooltip-mode -1) ;; tool tip off
(set-fringe-mode 10) ;; give some breathing room
(menu-bar-mode -1) ;; menu bar off
(global-hl-line-mode 1) ;; highlighting current line
(add-to-list 'initial-frame-alist '(fullscreen . maximized)) ;; maximizing window 
;; removing auto save and changing back up dir
(setq auto-save-default nil)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq initial-buffer-choice "~/")
(setq default-tab-width 4)
(setq visible-bell t) ;; visible bell on

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package source
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa")
			 ("elpa" . "https://elpa.gnu.org/packges/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
;;(unless (package-install-p 'use-package)
;;  (package-install 'use-paackage))

(require 'use-package)
(setq use-package-always-ensure t)

(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; ivy - auto completion
(use-package ivy
	     :diminish
	     :bind (("C-s" . swiper)
		    :map ivy-minibuffer-map
		    ("TAB" . ivy-alt-done)
		    ("C-l" . ivy-alt-done)
		    ("C-j" . ivy-next-line)
		    ("C-k" . ivy-previous-line)
		    :map ivy-switch-buffer-map
		    ("C-k" . ivy-previous-line)
		    ("C-l" . ivy-done)
		    ("C-d" . ivy-switch-buffer-kill)
		    :map ivy-reverse-i-search-map
		    ("C-k" . ivy-previous-line)
		    ("C-d" . ivy-reverse-i-search-kill))
	     :config
	     (ivy-mode 1))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; Doom themes
(use-package one-themes)
(load-theme 'one-dark t)

;; setting font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant italic :weight semi-bold :height 120 :width normal)))))

;;which key
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

;; ivy rich mode
(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history)))

;; helpful
(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

;; General - for key binding

(use-package general
  :config
  (general-create-definer dp/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")
  (dp/leader-keys
   "t" '(:ignore t :which-key "toggles")))

(general-define-key
 "C-M-j" 'counsel-switch-buffer) 

(defun dp/evil-hook ()
  (dolist (mode '(custom-mode
		  eshell-mode
		  git-rebase-mode
		  erc-mode
		  circe-server-mode
		  circe-chat-mode
		  crice-query-mode
		  sauron-mode
		  term-mode))
    (add-to-list 'evil-emacs-state-modes mode)))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  :hook (evil-mode . dp/evil-hook)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

  ;; Use visual line motions even outside of visual line mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))

;; evil collection
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; hydra

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(dp/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(hydra evil-collection evil general helpful counsel ivy-rich which-key one-themes rainbow-delimiters ivy use-package)))
