;;; 1python.el --- Python accommodation
;;; Commentary:
;;; Code:
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;; 1python.el ends here
