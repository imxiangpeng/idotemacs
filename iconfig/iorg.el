(require 'org)

(setq-default org-use-sub-superscripts nil)


(setq org-adapt-indentation t
  org-hide-leading-stars t
  org-odd-levels-only t)

(with-eval-after-load 'org
  (setq org-startup-indented t))

(provide 'iorg)
