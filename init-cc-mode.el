;;; init-cc-mode.el --- c/c++ Custom

;;; Commentary:

;;; Code:
;;; CC-mode配置
; (require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
(setq c-basic-offset 4)

;;;; 我的C/C++语言编辑策略

(defun my-c-mode-common-hook()
    (setq tab-width 4 indent-tabs-mode nil)
    ;;(c-toggle-auto-hungry-state 1)
    ;; 按键定义
    (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
    (define-key c-mode-base-map [(return)] 'newline-and-indent)
    (define-key c-mode-base-map [(f7)] 'compile)

    (define-key c-mode-map(kbd "(") 'skeleton-pair-insert-maybe)

    ;; 预处理设置
    (setq c-macro-shrink-window-flag t)
    (setq c-macro-preprocessor "cpp")
    (setq c-macro-cppflags " ")
    (setq c-macro-prompt-flag t)
    (setq hs-minor-mode t)
    (setq abbrev-mode t)
)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "stroustrup")
)

(provide 'init-cc-mode)
;;; init-cc-mode.el ends here
