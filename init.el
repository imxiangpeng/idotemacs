;; mxp, this is my small emacs config

;; add iconfig to load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/iconfig") ;

;; show line number
(global-linum-mode t);

;; display row&col num in status
(column-number-mode t);
(show-paren-mode t);

;; hight current line
(global-hl-line-mode 1);

(setq default-buffer-file-coding-system 'utf-8)

(prefer-coding-system 'utf-8)

(set-language-environment "UTF-8")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (htmlize which-key magit helm-projectile helm)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq default-buffer-file-coding-system 'utf-8)

(prefer-coding-system 'utf-8)

(set-language-environment "UTF-8")

;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
  (setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
  (setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
  (setq auto-save-list-file-prefix
      emacs-tmp-dir)

(load-theme 'spacemacs-light t)

(require 'ipackage-archives)

(require 'ihelm)

(require 'iorg)

(which-key-mode)
