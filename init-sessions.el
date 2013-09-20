;;; init-sessions.el --- save a list of open files in ~/.emacs.d/.emacs.desktop

;;; Commentary:

;;; Code:
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(desktop-save-mode 1)
(provide 'init-sessions)
;;; init-sessions.el ends here
