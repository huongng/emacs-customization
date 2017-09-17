(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Ido
(require 'ido)
(ido-mode t)

;; Automatic syntax highlight
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))

;; Set TAB to 4 spaces for C files
(setq-default c-basic-offset 4)

;; theme
(load-theme 'solarized-light t)

;; font
(set-face-attribute 'default nil :font "Ubuntu Mono-14" )
(set-face-attribute 'font-lock-type-face nil :weight 'bold)

;; path environment for Emacs shell
(when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

;; save session
;;(desktop-save-mode 1)

;; fringe
;;(set-face-attribute 'fringe nil :background "#222222" :foreground "#222222")

(setq mac-command-modifier 'meta)

;; MAGIT customization
(global-set-key (kbd "C-x g") 'magit-status)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8bb8a5b27776c39b3c7bf9da1e711ac794e4dc9d43e32a075d8aa72d6b5b3f59" "4d80487632a0a5a72737a7fc690f1f30266668211b17ba836602a8da890c2118" default)))
 '(package-selected-packages
   (quote
    (magit git sourcerer-theme solarized-theme greymatters-theme exec-path-from-shell avy auto-complete ahungry-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
