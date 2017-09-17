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
