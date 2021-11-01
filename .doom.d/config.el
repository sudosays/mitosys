;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Julius"
      user-mail-address "")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :name "Inconsolata" :size 20)
doom-variable-pitch-font (font-spec :family "serif" :name "Times New Roman"  :size 16))


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-Iosvkem)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;;(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
(setq TeX-command-default "LatexMk")

(map! :map TeX-mode-map
      :localleader
      :desc "Run TeX commands" "b" #'TeX-command-run-all)

(defun find-TeX-master (depth dir)
(let ((main-file (nth 0 (directory-files dir t "\\.latexmain$"))))
        (if main-file
                (concat (file-name-directory main-file) (file-name-base main-file))
                (if (> depth 0)
                    (find-TeX-master (- depth 1) (file-name-directory (directory-file-name dir)))))))

(defun set-TeX-master ()
  (setq TeX-master (find-TeX-master 1 default-directory)))

(add-hook 'LaTeX-mode-hook #'set-TeX-master)
(setq geiser-active-implementations '(mit))

(defun goto-term ()
  (interactive)
  (set-buffer (make-term "terminal" "/usr/bin/fish"))
  (term-mode)
  (term-char-mode)
(switch-to-buffer "*terminal*"))


(map! :leader
     :desc "Open terminal buffer" "$" #'goto-term)

(setq doom-themes-treemacs-enable-variable-pitch nil)

