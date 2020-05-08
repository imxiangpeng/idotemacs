;; for more information see:http://tuhdo.github.io/helm-intro.html


(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
         ("C-c h" . helm-command-prefix)
         ("C-c f" . helm-recentf)
         ("C-x b" . helm-buffers-list)
         ("C-x C-f" . 'helm-find-files)
  :map helm-map
        ("C-i" . helm-execute-persistent-action))
  :config (setq
        helm-buffers-fuzzy-matching t
        helm-split-window-in-side-p t
        helm-move-to-line-cycle-in-source t
        helm-split-window-in-side-p t ; open helm buffer inside current window, not occupy whole other window
        helm-move-to-line-cycle-in-source t ; move to end or beginning of source when reaching top or bottom of source.
        helm-ff-search-library-in-sexp t ; search for library in `require' and `declare-function' sexp.
        helm-scroll-amount 8 ; scroll 8 lines other window using M-<next>/M-<prior>
        helm-ff-file-name-history-use-recentf t
        helm-echo-input-in-header-line t
        helm-autoresize-max-height 40
        helm-autoresize-min-height 0
        helm-autoresize-mode 1
        helm-mode 1)
  :hook (after-init . helm-mode))

;(use-package helm-descbinds
;  :ensure t
;  :bind ("C-h b" . helm-descbinds))


(use-package projectile
  :ensure t
  :bind (("C-c p o" . projectile-switch-open-project)
    ("C-c p s" . projectile-switch-project))
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t))

(use-package helm-projectile
  :ensure t
  :bind ("M-t" . helm-projectile-find-file)
  :config
  (helm-projectile-on))

(provide 'ihelm)
