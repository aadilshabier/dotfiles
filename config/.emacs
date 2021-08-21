;; Emacs Init scripts

;;Default font size
(setq default-frame-alist '((font . "Source Code Pro-14")))

;;Add melpa repo
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;;Remove startup message
(setq inhibit-splash-screen t)

;;Save backups into a different folder
(setq backup-directory-alist '(("." . "~/.cache/emacs-backups")))

;;Ido everything
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;;Use 'ibuffers instead of standard 'list-buffers
(defalias 'list-buffers 'ibuffer)

;;Display relative line numbers in text and programming mode
(setq-default display-line-numbers-type 'visual
              display-line-numbers-current-absolute t
              ;display-line-numbers-width 4
              display-line-numbers-widen t)
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;;CC tabs and spaces
(setq-default c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)

;;Agenda Files
(setq org-agenda-files '("~/Documents/agenda.org"))

;;Packages Start
;;Org superstar
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;;Pdf tools
(pdf-tools-install)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(tsdh-dark))
 '(package-selected-packages '(pdf-tools rust-mode magit org-superstar try)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
