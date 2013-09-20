;;; init-auto-complete.el --- configure

;;; Commentary:

;;; Code:
(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete/")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/dict")

(global-auto-complete-mode t)

(global-set-key (kbd "M-[") 'auto-complete)

(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")
(define-key ac-completing-map "\M-n" 'ac-next)
(define-key ac-completing-map "\M-p" 'ac-previous)

(setq-default ac-sources '(
    ;需要安装yasnippet
    ac-source-yasnippet
    ac-source-filename
    ac-source-words-in-all-buffer
    ac-source-functions
    ac-source-variables
    ac-source-symbols
    ac-source-features
    ac-source-abbrev
    ac-source-words-in-same-mode-buffers
    ac-source-dictionary))
(require 'auto-complete-clang-async)
(defun my-ac-cc-mode-setup ()
    (setq ac-clang-complete-executable "~/.emacs.d/el-get/clang-complete-async/clang-complete")
    (setq ac-sources '(
                       ac-source-yasnippet
                       ac-source-clang-async
                       ac-source-abbrev
                       ac-source-dictionary
                       ac-source-words-in-same-mode-buffers
                       ))
   ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
    (ac-clang-launch-completion-process))

(defun my-ac-config ()  
    (add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup))

(my-ac-config)  
(provide 'init-auto-complete)
;;; init-auto-complete.el ends here
