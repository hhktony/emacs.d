;;; init-programming.el --- Initialise common programming options

;; Common programming related stuff for a range of modes

;;; Commentary:

;;; Code:

;; 设置TAGS文件位置
(setq tags-file-name "./TAGS")
;; 设置TAGS文件列表
(setq tags-table-list '("./TAGS" "~/TAGS"))

(defun my-comment-or-uncomment-region (beg end &optional arg)
    (interactive (if (use-region-p)
        (list (region-beginning) (region-end) nil)
        (list (line-beginning-position)
        (line-beginning-position 2))))
    (comment-or-uncomment-region beg end arg)
)

(global-set-key [remap comment-or-uncomment-region] 'my-comment-or-uncomment-region)
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region)

(defun common-programming-setup ()
  "Tweaks and customisations for all programming modes."
  ;; show trailing whitespace
  ;;(setq show-trailing-whitespace t)
  ;; turn on spell checking for strings and comments
  (flyspell-prog-mode)
  ;; highlight TODO and fixme so it looks scary
  (font-lock-add-keywords nil '(("\\<\\(TODO\\|todo\\|FIXME\\|fixme\\)" 1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'common-programming-setup)

(provide 'init-programming)

;;; init-programming.el ends here
