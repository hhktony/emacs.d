;; 设置缺省工作目录
(setq default-directory "~/")

;; 括号匹配无延时
(setq show-paren-delay 0)
;; 只高亮显示匹配的括号
(setq show-paren-style 'parenthesis)
;; 显示括号匹配
(show-paren-mode t)

;; 不生成名为#filename#的临时文件
(setq auto-save-default nil)

;; 用一个很大的 kill ring.
(setq kill-ring-max 200)

;; 设置Tab
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;;显示图片
(setq auto-image-file-mode t)

(setq
 backup-by-copying t   ; 自动备份
 backup-directory-alist
 '(("." . "~/.saves")) ; 自动备份在目录"~/.saves"下
 delete-old-versions t ; 自动删除旧的备份文件
 kept-new-versions 6   ; 保留最近的6个备份文件
 kept-old-versions 2   ; 保留最早的2个备份文件
 version-control t)    ; 多次备份

;; 刷新缓冲区，当检测到变化
(global-auto-revert-mode 1)

;; 用aspell程序替代ispell
(setq-default ispell-program-name "aspell")

;; Use the clipboard, pretty please, so that copy/paste
(setq x-select-enable-clipboard t)

;; 使用vim模式
; (setq viper-mode t)
; (require 'viper)

(provide 'init-editor)
