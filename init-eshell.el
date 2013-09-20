;;; init-eshell.el --- Clear eshell buffer like in bash or zsh

;;; Commentary:

;;; Code:
(defun eshell/clear ()
  "clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(setq eshell-prompt-function
    (lambda ()
        (concat
            "[" (format-time-string "%Y/%m/%d(%a) %H:%M") "]"
            "["
            (user-login-name) "@" (system-name) " "
            (eshell/pwd)
            "]\n"
            (if (= (user-uid) 0)
            "#"
            "$")
            " "
       )))

(setq eshell-prompt-regexp "^[^#$]*[$#] ")

(add-hook 'eshell-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-l") 'eshell/clear)
             (local-set-key "\C-p" 'eshell-previous-matching-input-from-input)
             (local-set-key "\C-n" 'eshell-next-matching-input-from-input)
             (local-set-key (kbd "C-d") 'eshell-life-is-too-much)))

;(global-set-key (kbd "C-c s") 'eshell)

(provide 'init-eshell)
;;; init-eshell.el ends here
