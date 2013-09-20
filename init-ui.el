;;; init-ul.el --- UI settings for emacs

;;; Commentary:

;;; Code:
;; 设置默认字体
(set-default-font "-unknown-WenQuanYi Micro Hei Mono-normal-normal-normal-*-16-*-*-*-*-0-iso10646-1")

;; 设置启动时窗口的长宽，下面为80*25
; (setq initial-frame-alist '((width . 80) (height . 25))) 
;; 透明设置
; (set-frame-parameter (selected-frame) 'alpha (list 90 50))
; (add-to-list 'default-frame-alist (cons 'alpha (list 90 50)))

;; 关闭启动画面
(setq inhibit-startup-message t)

;; 删除临时缓冲区的消息
(setq initial-scratch-message nil)

;; 设置标题栏
(setq frame-title-format "butbueatiful") 

;; 去掉工具栏 tooltip 菜单栏 滚动条
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
;;  小的 fringe 边距
; (set-fringe-mode '(1 . 1))

;; 光标不闪
(blink-cursor-mode -1)
;; 使用滚轴鼠标
(mouse-wheel-mode t)
;; 除掉响铃
(setq visible-bell -1)

;; 显示行列号
(setq line-number-mode t)
(setq column-number-mode t)

;; 左侧行号
(require 'linum)
(setq linum-format "%4d ")
(global-linum-mode t)
(put 'upcase-region 'disabled nil)

;; 显示文件大小
(size-indication-mode t)

;;;================
;;; color settings
;;;================
;; 指针颜色设置为白色
(set-cursor-color "purple")
;; 鼠标颜色设置为白色
(set-mouse-color "white")
;; 使用黑色背景
(set-background-color "black")
;; 使用白色前景
(set-foreground-color "white")
;; 区域前景颜色设为绿色
(set-face-foreground 'region "green")
;; 区域背景色设为蓝色
(set-face-background 'region "gray")

;; 高亮当前行
(global-hl-line-mode 0)
;; 光标为竖线
(setq-default cursor-type 'bar)

;; 启动时间显示
(display-time-mode 1)
;; 使用24小时制
(setq display-time-24hr-format t)
;; 显示时间到变化频率
(setq display-time-interval 10)

;;防止页面滚动时跳动，
;;scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动
;;scroll-step 1 设置为每次翻滚一行，可以使页面更连续
(setq scroll-step 1
	  scroll-margin 3
	  scroll-conservatively 10000)

;; 当使用命令后，过 1 秒显示绑定的键
(setq suggest-key-bindings 1)
;; 存盘的时候，要求最后一个是换行符
(setq require-final-newline t)

;; Switch to fullscreen with F11 (GUI)
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
        (if (frame-parameter nil 'fullscreen) nil 'fullboth)))
(global-set-key [f11] 'fullscreen)

(provide 'init-ui)
;;; init-ui.el ends here
