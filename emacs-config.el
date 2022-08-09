;; Emacs configuration file

;; Don't show the emacs init screen
(setq inhibit-startup-message t
      visibile-bell t
      )

;; Don't create the backup files (~ suffix)
(setq make-backup-files nil)

;; Don't create auto-save files (# prefix)
(setq auto-save-default nil)

;; strictly enforce tab width
(setq custom-tab-width 4)

;; Enable the smart "guessing" style for tabs in python.
;; The guess will attempt to continue using the same indentation
;; method that was used in the file previously. Otherwise the default
;; is used (in this case spaces).
(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
(add-hook 'python-mode-hook (lambda ()
                              (guess-style-guess-tab-width)))


;; Set a color to the foreground when a space is present
;; Enable the mode everywhere
(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#57f051")))))
(setq whitespace-display-mappings
  '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
(global-whitespace-mode)


;;(when load-file-name
;;  (setq user-emacs-directory (file-name-directory load-file-name)))
;;
;;(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;      (url-retrieve-synchronously
;;       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))
;;(el-get-bundle go-mode)


