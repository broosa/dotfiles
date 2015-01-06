;;Package Management
;;Taken from http://ergoemacs.org/emacs/emacs_package_system.html


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)

  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
)

;; Always use line numbers
(global-linum-mode t)

;; Use a GOOD c indentation style
(setq c-default-style "linux"
      c-basic-offset 4)

;; Use the ibuffer command instead of the default to list buffers
(global-set-key "\C-x\C-b" 'ibuffer)

;; Set the default indent size
(setq-default tab-width 4)

;; Don't ask to save before a recompile
(setq compilation-ask-about-save nil)

;; Disable the emacs startup message
(setq inhibit-startup-message t)

;; Prevent emacs from cluttering the home directory with save files
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jabber-account-list
   (quote
	(("byron.roosa.5@chat.facebook.com"
	  (:password . "Ult1m@t3Pl@yer")
	  (:network-server . "chat.facebook.com")
	  (:port . 5222)
	  (:connection-type . starttls)))))
 '(jabber-backlog-number 20))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
