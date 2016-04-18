;;; init.el --- Emacs customization
;;; Commentary:
;;; This is the starting point for all Emacs customization.  This file should
;;; contain only package/dependency management and aesthetic options.
;;; Code:
(setq initial-frame-alist
      '((left . 50)
        (top . 50)
        (width . 180)
        (height . 40)
        ))

(setq default-frame-alist
      '((width . 90)
        (height . 30)
        ))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(load-theme 'tronesque t)

;; frame customization
(declare-function tronesque-mode-line "")
(tronesque-mode-line)
(tool-bar-mode 0)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(display-battery-mode 1)
(require 'time)
(setq display-time-24hr-format t)
(display-time-mode 1)
(require 'sml-modeline)
(sml-modeline-mode 1)
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(column-number-mode 1)
(line-number-mode 0)
(require 'linum)
(setq linum-format "%4d")
(global-linum-mode 1)
(defvar linum-mode-inhibit-modes-list)
(setq linum-mode-inhibit-modes-list '(eshell-mode
                                      shell-mode
                                      erc-mode
                                      jabber-roster-mode
                                      jabber-chat-mode
                                      gnus-group-mode
                                      gnus-article-mode
                                      speedbar-mode
                                      magit-mode
                                      comint-mode
                                      inferior-python-mode
                                      powershell-mode))

;; miscellaneous
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))

(add-to-list 'load-path "~/.emacs.d/custom")
(load "0setup.elc")
(load "1python.elc")
(load "2ruby.elc")
(load "3r.elc")
(load "4web.elc")
;;; init.el ends here
