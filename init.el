;;; init.el --- Load configs for specific features and modes

;;; hhktony's Emacs Configuration
;;; Website : http://hhktony.github.io
;;; Contact : hhktony@gmail.com
;;;
;;; ~/.emacs.d/init.el

;;; Commentary:

;;; Code:
(setq user-full-name "TonyXu")
(setq user-mail-address "hhktony@gmail.com")

;;----------------------------------------------------------------------------
;; Load Emacs elisp path
;;----------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-el-get)
(require 'init-terminal)
(require 'init-ui)
(require 'init-kbds)
(require 'init-editor)
(require 'init-locales)
(require 'init-ido)
(require 'init-isearch)
(require 'init-sessions)
(require 'init-smex)
(require 'init-eshell)
(require 'init-yasnippet) ;; yasnippet need to be loaded before autocomplete
(require 'init-auto-complete)
(require 'init-programming)
(require 'init-cc-mode)
;; (require 'init-doxymacs)
(require 'init-misc)
(require 'init-markdown)
(require 'init-whitespace)
; (require 'init-auctex)
(require 'init-themes)
(provide 'init)
;;; init.el ends here
