;;; Emacs config


;; Package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defun require-package (package &optional min-version no-refresh)
  "Ask ELPA to install given PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

; use-package is always needed
(require-package 'use-package)
(require 'use-package)


;; Basic
(setq inhibit-startup-message t
      echo-keystrokes 0.1)
(fset 'yes-or-no-p 'y-or-n-p)

; Word wrap
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

; Highlight and auto-complete matched parens
(show-paren-mode)
(electric-pair-mode)

; Hide toolbar & menubar
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))


;; Key binding

; For Mac
(when (featurep 'mac-win)
  (bind-keys ("H-a" . mark-whole-buffer)
             ("H-v" . yank)
             ("H-c" . kill-ring-save)
             ("H-s" . save-buffer)
             ("H-l" . linum-mode)
             ("H-w" . delete-window)
             ("H-q" . save-buffers-kill-terminal)
             ("C-<tab>" . helm-buffers-list)
             ("H-z" . undo))

  (setq mac-option-modifier 'meta
        mac-command-modifier 'hyper))

; Vim keybinding
(use-package evil
  :ensure t
  :init
  (progn
    (evil-mode)
    (bind-key "b" 'helm-buffers-list evil-normal-state-map)))

(use-package evil-surround
  :ensure t
  :init
  (global-evil-surround-mode))

; Ace jump
(use-package ace-jump-mode
  :ensure t
  :commands ace-jump-mode
  :init
  (bind-key "SPC" 'ace-jump-mode evil-normal-state-map))

; Multiple cursors
(use-package multiple-cursors
  :ensure t
  :bind (("C-H-l" . mc/edit-lines)
         ("C-H-." . mc/mark-next-like-this)
         ("C-H-," . mc/mark-previous-like-this)
         ("C-H-a" . mc/mark-all-like-this)
         ("C-H-w" . mc/mark-next-word-like-this)
         ("C-H-S-w" . mc/mark-all-words-like-this)
         ("C-H-s" . mc/mark-next-symbol-like-this)
         ("C-H-S-s" . mc/mark-all-symbols-like-this)
         ("C-H-d" . mc/mark-all-dwim)
         ("C-H-r" . mc/mark-all-in-region)))

; Indent
(bind-keys ("RET" . newline-and-indent)
           ("C-j" . newline))

; Prefer space indent
(setq-default tab-width 4
              indent-tabs-mode nil)

; Highlight tabs and trailing spaces
(setq whitespace-style '(face
                         indentation
                         trailing
                         empty))
(global-whitespace-mode)


;; Fonts & Colors
(when (display-graphic-p)
  (use-package font-utils :ensure t)
  (setq fonts '("Menlo" "Consolas" "DejaVu Sans Mono")
        zh-fonts '("STHeiti" "Microsoft Yahei" "WenQuanYi Zen Hei"))

  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" (font-utils-first-existing-font fonts) 16))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family (font-utils-first-existing-font zh-fonts)))))

(load-theme 'manoj-dark t)


;; Buffers

; Make buffer name unique
(use-package uniquify
  :init
  (setq uniquify-buffer-name-style 'forward))


; Auto reload buffers
(global-auto-revert-mode)

; Stop backup
(setq make-backup-files nil)
(setq auto-save-default nil)

; Helm
(use-package helm-config
  :ensure helm
  :init
  (progn
    (setq helm-ff-auto-update-initial-value t)
    (helm-mode))
  :bind (("M-o" . helm-for-files)
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x C-b" . helm-buffers-list)))

; Projectile
(use-package projectile
  :ensure t
  :bind ("H-p" . projectile-switch-project)
  :init
  (projectile-global-mode))

(use-package helm-projectile
  :ensure t
  :bind ("H-f" . helm-projectile))


;; Programming

; Git
(use-package magit
  :ensure t
  :commands magit-status
  :bind ("H-g" . magit-status))

; Puppet
(use-package puppet-mode
  :ensure t
  :defer t)

; Linux style for C/C++
(use-package cc-mode
  :defer t
  :config
  (progn
    (setq c-default-style "k&r"
          c-basic-offset 4)))

; CMake
(use-package cmake-mode
  :ensure t
  :mode "CMakeLists\\.txt\\'")

; Dockerfile
(use-package dockerfile-mode
  :ensure t
  :mode "Dockerfile\\'")

; Ruby
(use-package ruby-mode
  :mode "\\(\\.\\(e?rb\\|rjs\\|rake\\)\\|Rakefile\\|Vagrantfile\\)\\'"
  :interpreter "ruby\\|ruby[12]\.[0-9]\\|jruby\\|rbx")

(use-package ruby-block
  :ensure t
  :commands ruby-block-mode
  :init
  (progn
    (setq ruby-block-highlight-toggle t)
    (add-hook 'ruby-mode-hook 'ruby-block-mode)))

(use-package ruby-end
  :commands ruby-end-mode
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'ruby-end-mode))

; Golang
(use-package go-mode
  :ensure t
  :defer t)

; Rust
(use-package rust-mode
  :ensure t
  :defer t)

; Haskell
(use-package haskell-mode
  :ensure t
  :defer t)

; Scala
(use-package scala-mode2
  :ensure t
  :defer t)

; Lisp
(use-package clojure-mode
  :ensure t
  :defer t)


; Web

; Rainbow visualize colors
(use-package rainbow-mode
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'css-mode-hook 'rainbow-mode)
    (add-hook 'scss-mode-hook 'rainbow-mode)))

; Web-mode for html
(use-package web-mode
  :ensure t
  :mode "\\.tpl\\|\\.erb\\|\\.html?\\|\\.jinja2\\'")

; Emmet auto-complete html tags
(use-package emmet-mode
  :ensure t
  :defer t
  :init
  (add-hook 'web-mode-hook 'emmet-mode))

; Enhanced javascript mode
(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  :config
  (setq js2-basic-offset 2))

; Coffee script
(use-package coffee-mode
  :ensure t
  :defer t
  :config
  (custom-set-variables '(coffee-tab-width 2)))

; Sass
(use-package scss-mode
  :ensure t
  :defer t
  :config
  (setq scss-compile-at-save nil))


;; Markups

; Markdown
(use-package markdown-mode
  :ensure t
  :defer t)

; YAML
(use-package yaml-mode
  :ensure t
  :defer t)

; Latex
(use-package tex-site
  :ensure auctex
  :disabled t
  :mode ("\\.tex\\'" . latex-mode)
  :config
  (progn
    (setq TeX-auto-save t
          TeX-parse-self t
          TeX-electric-escape t
          TeX-PDF-mode t)
    (setq-default TeX-master nil)
    (when (eq system-type 'darwin)
      (setq TeX-view-program-selection
            '((output-dvi "DVI Viewer")
              (output-pdf "PDF Viewer")
              (output-html "HTML Viewer")))

      (setq TeX-view-program-list
            '(("DVI Viewer" "open %o")
              ("PDF Viewer" "open %o")
              ("HTML Viewer" "open %o"))))
    (add-hook 'LaTeX-mode-hook (lambda () (turn-on-auto-fill)))))

; Auto-complete
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode))

(use-package auto-complete-config
  :ensure auto-complete
  :disabled t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode)))

(use-package company
  :ensure t
  :init
  (progn
    (setq company-idle-delay t)
    (add-hook 'after-init-hook 'global-company-mode)))
