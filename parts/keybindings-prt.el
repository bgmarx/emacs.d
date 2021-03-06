;;; keybindings-prt.el --- Keybinding setup

;;; Commentary:
;;

;;; Code:

(global-unset-key (kbd "C-b")) ; backward-char
(global-unset-key (kbd "C-f")) ; forward-char
(global-unset-key (kbd "C-p")) ; previous-line
(global-unset-key (kbd "C-n")) ; next-line
(global-unset-key (kbd "C-M-i"))
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-I") 'scroll-down)
(global-set-key (kbd "M-C-i") 'scroll-down)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-K") 'scroll-up)
(global-set-key (kbd "M-C-k") 'scroll-up)
(global-set-key (kbd "M-L") 'end-of-line)
(global-set-key (kbd "M-C-l") 'end-of-line)
(global-set-key (kbd "M-J") 'beginning-of-line)
(global-set-key (kbd "M-C-j") 'beginning-of-line)

(global-unset-key (kbd "M-b")) ; backward-word
(global-unset-key (kbd "M-f")) ; forward-word
(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-o") 'forward-word)
(global-set-key (kbd "M-U") 'backward-paragraph)
(global-set-key (kbd "M-O") 'forward-paragraph)
(global-set-key (kbd "M-C-o") 'forward-paragraph)
(global-set-key (kbd "M-C-u") 'backward-paragraph)
(global-set-key (kbd "M-b") 'pop-to-mark-command)

(global-unset-key (kbd "C-<backspace>")) ; backward-kill-word
(global-unset-key (kbd "M-d")) ; kill-word

(global-unset-key (kbd "C-d")) ; delete-char
(global-set-key (kbd "M-d") 'delete-backward-char)
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "M-D") 'backward-kill-word)
(global-set-key (kbd "M-F") 'kill-word)
(global-set-key (kbd "<delete>") 'delete-char)

(global-unset-key (kbd "M-<")) ; beginning-of-buffer
(global-unset-key (kbd "M->")) ; end-of-buffer
(global-set-key (kbd "M-h") 'beginning-of-buffer)
(global-set-key (kbd "M-H") 'end-of-buffer)

(global-unset-key (kbd "C-x 1")) ; delete-other-windows
(global-unset-key (kbd "C-x 0")) ; delete-window
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "M-4") 'balance-windows)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-9") 'winner-undo)
(global-set-key (kbd "M-+") 'balance-windows)

(global-unset-key (kbd "M-x")) ; execute-extended-command
(global-set-key (kbd "M-a") 'execute-extended-command)
(global-set-key (kbd "M-q") 'shell-command)

(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-s"))
(global-unset-key (kbd "C-a"))
(global-set-key (kbd "C-d") 'windmove-right)
(global-set-key (kbd "C-s") 'windmove-down)
(global-set-key (kbd "C-a") 'windmove-left)
(global-set-key (kbd "C-w") 'windmove-up)
(global-set-key (kbd "M-s") 'move-cursor-next-pane)
(global-set-key (kbd "M-S") 'move-cursor-previous-pane)

(global-unset-key (kbd "C-/")) ; undo
(global-unset-key (kbd "C-_")) ; undo
(global-set-key (kbd "M-z") 'undo)

(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key (kbd "M-p") 'mark-paragraph)

(global-unset-key (kbd "M-w")) ; kill-ring-save
(global-unset-key (kbd "C-y")) ; yank
(global-unset-key (kbd "M-y")) ; yank-pop
(global-unset-key (kbd "C-r")) ; yank-pop
(global-set-key (kbd "M-x") 'kill-region)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-V") 'yank-pop)
(global-set-key (kbd "C-r d") 'kill-rectangle)

(global-unset-key (kbd "C-x C-f")) ; find-file
(global-unset-key (kbd "C-x h")) ; mark-whole-buffer
(global-unset-key (kbd "C-x C-w")) ; write-file
(global-set-key (kbd "C-o") 'find-file)

;; general
(global-set-key (kbd "M-r") 'replace-string)
(global-set-key (kbd "C-c i") 't-indent-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-c k") 'kill-compilation)
(global-set-key (kbd "C-c w") 'remove-trailing-whitespace-mode)

(global-unset-key (kbd "C-M-r")) ;; isearch-backwards
(global-set-key (kbd "C-f") 'isearch-forward-regexp)
(global-set-key (kbd "C-*") 'isearch-forward-at-point)

(global-set-key (kbd "C-c r") 'revert-buffer)

(define-key isearch-mode-map (kbd "M-s") 'move-cursor-next-pane)
(define-key isearch-mode-map (kbd "M-v") 'isearch-yank-kill)
(define-key isearch-mode-map (kbd "M-w") 'isearch-query-replace)
(define-key isearch-mode-map (kbd "M-o") 'isearch-yank-word)
(define-key isearch-mode-map (kbd "M-l") 'isearch-yank-char)
(define-key isearch-mode-map (kbd "M-j") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "M-u") 'isearch-delete-char)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)

;; power-edit bundle bindings
(global-set-key (kbd "C-c u") 't-move-text-up)
(global-set-key (kbd "C-c n") 't-move-text-down)
(global-set-key (kbd "C-M-l")  'textmate-shift-right)
(global-set-key (kbd "C-M-j")  'textmate-shift-left)
(global-set-key (kbd "C-c C-w") 'whitespace-mode)

(global-set-key (kbd "M-t") 'projectile-find-file)
(global-set-key (kbd "M-w") 'textmate-goto-symbol)

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "M-a") 'smex)

(key-chord-mode 1)

(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-x M-r") 'ruby-compilation-this-buffer)
(global-set-key (kbd "C-x M-k") 'kill-this-buffer)
(global-set-key (kbd "C-x t") 'dired-other-window)
(global-set-key (kbd "M-RET") 't-newline-and-indent)
(global-set-key (kbd "C-c C-c") 't-duplicate-current-line-or-region)


;; Help

(defvar lisp-find-map)
(define-prefix-command 'lisp-find-map)

(global-set-key (kbd "C-h e") 'lisp-find-map)

(global-set-key (kbd "C-h e c") 'finder-commentary)
(global-set-key (kbd "C-h e e") 'view-echo-area-messages)
(global-set-key (kbd "C-h e f") 'find-function)
(global-set-key (kbd "C-h e F") 'find-face-definition)
(global-set-key (kbd "C-h e i") 'info-apropos)
(global-set-key (kbd "C-h e k") 'find-function-on-key)
(global-set-key (kbd "C-h e l") 'find-library)

(defvar lisp-eval-map)
(define-prefix-command 'lisp-eval-map)

(global-set-key (kbd "C-c e") 'lisp-eval-map)

(global-set-key (kbd "C-c e b") 'eval-buffer)
(global-set-key (kbd "C-c e r") 'eval-region)
(global-set-key (kbd "C-c e l") 'eval-last-sexp)

(global-set-key (kbd "C-x p") 'projectile-persp-switch-project)
(global-set-key (kbd "C-c C-k") 't-comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-p s") 'persp-switch)
(global-set-key (kbd "C-p p") 't-persp-last)
(global-set-key (kbd "C-p d") 'persp-kill)
(global-set-key (kbd "C-p x") 'persp-kill)
(global-set-key (kbd "C-_") 'company-complete)

(global-set-key (kbd "C-x b") 'projectile-switch-to-buffer)
(global-set-key (kbd "C-x C-b") 'projectile-ibuffer)

(global-set-key (kbd "M-q") 't-shell-command)

;; Traverse through buffers
(global-set-key (kbd "M->") 'next-buffer)
(global-set-key (kbd "M-<") 'previous-buffer)

;; Test bindings

(defvar testing-map)
(define-prefix-command 'testing-map)

(global-unset-key (kbd "M-e"))
(global-set-key (kbd "M-e") 'testing-map)

(global-set-key (kbd "M-e e") 'tester-run-test-file)
(global-set-key (kbd "M-e s") 'tester-run-test-suite)

;; Neotree
(global-set-key (kbd "C-c .") 'neotree-toggle)

;; Popwin
(global-set-key (kbd "C-y") popwin:keymap)

;; Ido-Mode
(defun ido-my-keys ()
  (define-key ido-completion-map (kbd "M-k") 'ido-next-match)
  (define-key ido-completion-map (kbd "M-i") 'ido-prev-match))

(add-hook 'ido-setup-hook 'ido-my-keys)

;; Company-Mode
(eval-after-load "company"
  '(progn
     (define-key company-active-map (kbd "M-k") 'company-select-next)
     (define-key company-active-map (kbd "M-i") 'company-select-previous)))

(define-key process-menu-mode-map (kbd "C-k") 't-delete-process-at-point)

(defun alchemist-my-iex-keys ()
  (define-key alchemist-iex-mode-map (kbd "C-d") 'windmove-right))

(add-hook 'alchemist-iex-mode-hook 'alchemist-my-iex-keys)

(provide 'keybindings-prt)

;;; keybindings-prt.el ends here
