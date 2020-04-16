(require 'org)

(setq-default org-use-sub-superscripts nil)


;(setq org-adapt-indentation t
;  org-hide-leading-stars t
;  org-odd-levels-only t)

(with-eval-after-load 'org
  (setq org-startup-indented t))

; stop
(setq org-export-with-sub-superscripts nil)

(provide 'iorg)
