;;; 3r.el --- R accommodation
;;; Commentary:
;;; Code:
(require 'ess-site)
(add-hook 'ess-mode-hook 'auto-complete-mode)
(add-hook 'ess-post-run-hook 'auto-complete-mode)
;;; 3r.el ends here
