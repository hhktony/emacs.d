;;; init-doxymacs.el --- configure

;;; Commentary:

;;; Code:
(add-to-list 'load-path  "~/.emacs.d/el-get/doxymacs/lisp")
(require 'doxymacs) ;; 启动doxymacs
    ;;注释高亮，针对C和C++程序')
(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
(doxymacs-mode);doxymacs-mode常true
;(global-set-key [(f6)] 'doxymacs-mode);doxymacs-mode快捷键[F6]

(add-hook 'c-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode
(add-hook 'c++-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode

(autoload 'doxygen-insert-function-comment "doxygen" "insert comment for the function at point" t)
(autoload 'doxygen-insert-file-comment "doxygen" "insert comment for file" t)
(autoload 'doxygen-insert-member-group-region "doxygen" "insert comment for member group" t)
(autoload 'doxygen-insert-compound-comment "doxygen" "insert comment for compound" t)
(provide 'init-doxymacs)
;;; init-doxymacs.el ends here
