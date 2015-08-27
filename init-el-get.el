;;; init-el-get.el --- El-get checking & initializing

;;; Commentary:
;; Master branch is recommended

;;; Code:
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;; el-get settings
;; Check if el-get is installed
(unless (require 'el-get nil 'noerror)
    (with-current-buffer
        (url-retrieve-synchronously
            "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
        (let (el-get-master-branch)
            (goto-char (point-max))
            (eval-print-last-sexp)
        )
    )
)

(setq my-packages
  (append
    '(;; local sources
        ; el-get
        session
        ; helm
        smex
        undo-tree
        yasnippet
        auto-complete
        auto-complete-yasnippet
        clang-complete-async
        ; doxymacs
        ; auctex
        emacs-w3m
        markdown-mode
    )
    (mapcar 'el-get-source-name el-get-sources)
  )
)

(el-get 'sync my-packages)

(provide 'init-el-get)
;;; init-el-get.el ends here
