(use-package org
  :ensure t
  :custom-face (org-ellipsis ((t (:foreground nil))))
  :preface
  :bind ("C-c C-c" . org-capture)
  :hook ((org-mode . (lambda ()
                       "Beautify org symbols."
                       (prettify-symbols-mode 1)))
         (org-indent-mode . (lambda()
                              (diminish 'org-indent-mode)
                              ;; WORKAROUND: Prevent text moving around while using brackets
                              ;; @see https://github.com/seagle0128/.emacs.d/issues/88
                              (make-variable-buffer-local 'show-paren-mode)
                              (setq show-paren-mode nil))))
  :config
  ;; To speed up startup, don't put to init section
  (setq org-agenda-files '("~/org")
        org-tags-column -80
        org-log-done 'time
        org-agenda-start-on-weekday 0
        org-catch-invisible-edits 'smart
        org-startup-indented t
        org-pretty-entities nil
        org-hide-emphasis-markers t
        org-default-notes-file "~/org/notes.org")

  ;; Prettify UI
  (use-package org-bullets
    :hook (org-mode . org-bullets-mode))

  (use-package org-fancy-priorities
    :diminish
    :hook (org-mode . org-fancy-priorities-mode))

  ;; Babel
  (setq org-confirm-babel-evaluate nil
        org-src-fontify-natively t
        org-src-tab-acts-natively t)

  ;; Add gfm/md backends
  (use-package ox-gfm)
  (add-to-list 'org-export-backends 'md)
  (use-package htmlize))

(provide 'iorg)
