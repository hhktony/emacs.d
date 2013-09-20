;; 以y/n替代yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; 向前删除一个字符
(global-set-key "\C-h" 'backward-delete-char)
;; 帮助命令
(global-set-key "\C-xh" 'help-command)

;; 不用Alt来调用M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; 使用 backward-kill-word
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; 自动补全括号
;; http://forum.ubuntu.org.cn/viewtopic.php?f=68&t=363635
;; 填入大中小括号，双单引号的匹配
;; 详细格式可以参照C-h f skeleton-pair-alist  
(setq skeleton-pair-alist  
      '((?\" _ "\"" >)
        (?\' _ "\'" >)
        (?\( _ ")" >)
        (?\[ _ "]" >)
        (?\{ _ "}" >)))

(setq skeleton-pair t)
;; 绑定全局键值
;; 也可以绑定单独到某个mode，比如cc-mode
;; (define-key cc-mode-map (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[")  'skeleton-pair-insert-maybe)


;; Hide/display line number
(global-set-key (kbd "<f2>") 'linum-mode)

;; 插入当前时间 Format: 2013-04-05 00:14
(defun insert-time()
  (interactive)
  (insert (format-time-string "%Y-%m-%d %R")))
(global-set-key (kbd "<f6>") 'insert-time)

(provide 'init-kbds)
