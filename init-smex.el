;;; init-smex.el --- smarter M-x

;;; Commentary:

;;; Code:
(smex-initialize)
(global-set-key [remap execute-extended-command] 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-x C-m") 'smex)

(provide 'init-smex)
;;; init-smex.el ends here
