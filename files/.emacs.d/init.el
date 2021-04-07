(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(require 'package)
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(setq custom-file (expand-file-name ".custom-set-variables.el" user-emacs-directory))
(when (file-exists-p custom-file) (load custom-file))

(when (require 'init-loader nil t) (init-loader-load "~/.emacs.d/inits"))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
