;;字体设置
;(set-default-font "Monospace-12")
(set-default-font "Monaco-12")
;(set-default-font "DejaVu Sans Mono-12");
;(set-default-font "SourceCodePro-12")
;(set-default-font "Monofur-14")
;(set-default-font "Liberation Serif-16")
(set-fontset-font (frame-parameter nil 'font) 'unicode'
"WenQuanYi Micro Hei Mono:pixelsize=16:antialias=true"
'nil' append)

(desktop-save-mode 1)

;(add-to-list 'load-path "~/.emacs.d/vendor/helm")
;(require 'helm-config)

;(global-set-key "\C-h" 'backward-delete-char-untabify)
;(define-key isearch-mode-map "\C-h" 'isearch-delete-char)
;(global-set-key (kbd "C-?") 'help-command)

(defun unix-werase-or-kill (arg)
      (interactive "*p")
      (if (and transient-mark-mode
             mark-active)
          (kill-region (region-beginning) (region-end))
        (backward-kill-word arg)))

(global-set-key (kbd "C-w") 'unix-werase-or-kill)
