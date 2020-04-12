;; mxp, this is my small emacs config

;; add iconfig to load-path
(add-to-list 'load-path "~/.emacs.d/iconfig") ;

;; disable toolbar
(tool-bar-mode 0)

;; show line number
(global-linum-mode t);

;; display row&col num in status
(column-number-mode t);
(show-paren-mode t);

;; hight current line
(global-hl-line-mode 1);

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (helm-projectile helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'ipackage-archives)

(require 'ihelm)

