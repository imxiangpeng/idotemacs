(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

;; disable toolbar
(tool-bar-mode 0)

;; show line number
(global-linum-mode t);

;; display row&col num in status
(column-number-mode t);
(show-paren-mode t);

;; hight current line
(global-hl-line-mode 1);

