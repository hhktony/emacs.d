;; Markdown-mode
;; http://jblevins.org/projects/markdown-mode/

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\)\\'" . markdown-mode) auto-mode-alist))

;; Use python markdown module as command utility to generate html
(setq markdown-command "python -m markdown")


(provide 'init-markdown)
