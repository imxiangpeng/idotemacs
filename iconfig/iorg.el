(use-package org
  :ensure t
  :custom-face (org-ellipsis ((t (:foreground nil))))
  :preface
  :bind ("C-c c" . org-capture)
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
  (defvar org-agenda-dir "" "gtd org files location")
  (setq-default org-agenda-dir "~/keeping/org")
  (setq org-agenda-files '("~/keeping/org")
        org-tags-column -80
        org-log-done 'time
        org-agenda-start-on-weekday 0
        org-catch-invisible-edits 'smart
        org-startup-indented t
        org-pretty-entities nil
        org-hide-emphasis-markers t
	org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir)
	org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir)
	org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir)
	org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))

  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline org-agenda-file-gtd "Tasks")
	   "* TODO %?\n  %i\n  %a")
	  ("n" "notes" entry (file+headline org-agenda-file-note "Quick notes")
           "* %?\n  %i\n %U"
           :empty-lines 1)
	  ("s" "Code Snippet" entry
           (file org-agenda-file-code-snippet)
           "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
	  ("j" "Journal" entry (file+datetree org-agenda-file-journal)
	   "* %?\nEntered on %U\n  %i\n  %a")))

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

  (use-package org-download
    :commands (org-download-enable
               org-download-yank
               org-download-screenshot)
    :init
    :hook (org-mode-hook . org-download-enable)
    :config
      (setq org-download-method 'attach
        org-download-image-attr-list '("#+ATTR_HTML: :width 80% :align center")))

  ;; Add gfm/md backends
  (use-package ox-gfm)
  (add-to-list 'org-export-backends 'md)
  (use-package htmlize))

(provide 'iorg)
