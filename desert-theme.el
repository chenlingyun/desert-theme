;;; desert-theme.el ---

;; Copyright (C) Sergei Lebedev
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA
;;
;;
;; Author: Sergei Lebedev <superbobry@gmail.com>
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet


(deftheme desert
  "A port of a well-known VIM theme.")

;; Intall rainbow-mode
(let* ((desert-fg "ghost white")
       (desert-bg "gray20")
       (desert-cursor-fg "khaki")
       (desert-comment-fg "LightSkyBlue3")
       (desert-doc-fg "IndianRed3")
       (desert-kw-fg "khaki")
       (desert-function-fg "PaleGreen3")
       (desert-variable-fg desert-fg)
       (desert-type-fg "PaleGreen3")
       (desert-string-fg "#ffa0a0")
       (desert-constant-fg desert-string-fg)
       (desert-warning-fg "goldenrod")
       (desert-builtin-fg "MediumPurple3")
       (desert-paren-fg "PaleGreen3")
       (desert-hl-fg "khaki")
       (desert-hl-bg "olivedrab")
       (desert-minibuffer-fg "khaki")
       (desert-linum-fg "yellow")
       (desert-mhl-bg "gray15") ;; mode-line, header-line
       (desert-fixme-fg "orangered")
       (desert-fixme-bg "yellow2")
      )
  (custom-theme-set-variables
   'desert
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'desert
   `(default ((t (:foreground ,desert-fg :background ,desert-bg))))
   `(cursor ((t (:background ,desert-cursor-fg))))
   `(fringe ((t (:background ,desert-bg)))) ;; hiding fringe
   `(font-lock-builtin-face ((t (:foreground ,desert-builtin-fg))))
   `(font-lock-comment-face ((t (:foreground ,desert-comment-fg))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,desert-comment-fg))))
   `(font-lock-doc-face ((t (:foreground ,desert-doc-fg))))
   `(font-lock-keyword-face ((t (:foreground ,desert-kw-fg))))
   `(font-lock-string-face ((t (:foreground ,desert-string-fg))))
   `(font-lock-type-face ((t (:foreground ,desert-type-fg :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,desert-variable-fg))))
   `(font-lock-warning-face ((t (:foreground ,desert-warning-fg :bold t))))
   `(font-lock-function-name-face ((t (:foreground ,desert-function-fg :bold t))))
   `(font-lock-constant-face ((t (:foreground ,desert-constant-fg))))

   `(minibuffer-prompt ((t (:foreground ,desert-minibuffer-fg :bold t))))
   '(Buffer-menu-buffer ((t (:inherit minibuffer-prompt))))
   `(header-line ((t (:background ,desert-mhl-bg :box (:color ,desert-bg :line-width 2)))))
   `(mode-line ((t (:inherit header-line :foreground "gray60"))))
   '(mode-line-inactive ((t (:inherit mode-line))))
   `(mode-line-buffer-id ((t (:inherit mode-line :foreground ,desert-warning-fg :bold t))))

   `(linum ((t (:foreground ,desert-linum-fg :background ,desert-bg))))
   `(highlight ((t (:foreground ,desert-hl-fg :background ,desert-hl-bg))))
   `(region ((t (:background nil :inherit highlight))))
   '(show-paren-mismatch ((t (:inherit font-lock-warning-face :bold t))))
   `(show-paren-match ((t (:foreground ,desert-paren-fg :bold t))))
   '(trailing-whitespace ((t (:inherit font-lock-warning-face))))
   '(match ((t (:weight bold))))

   `(link ((t (:background ,desert-bg :foreground ,desert-builtin-fg :bold t :underline nil))))
   `(link-visited ((t (:inherit link :bold nil))))

   `(isearch ((t (:foreground ,desert-hl-fg :background ,desert-hl-bg))))
   `(isearch-lazy-light ((t (:background ,desert-bg :foreground ,desert-fg :bold t))))

   '(jabber-roster-user-chatty ((t (:inherit font-lock-type-face :bold tx))))
   '(jabber-roster-user-online ((t (:inherit font-lock-keyword-face :bold t))))
   `(jabber-roster-user-offline ((t (:foreground "gray40" :background ,desert-bg))))
   '(jabber-roster-user-away ((t (:inherit font-lock-doc-face))))
   '(jabber-roster-user-xa ((t (:inherit font-lock-doc-face))))
   '(jabber-roster-user-dnd ((t (:inherit font-lock-comment-face))))
   '(jabber-roster-user-error ((t (:inherit font-lock-warning-face))))

   '(jabber-title-small ((t (:height 1.2 :weight bold))))
   '(jabber-title-medium ((t (:inherit jabber-title-small :height 1.2))))
   '(jabber-title-large ((t (:inherit jabber-title-medium :height 1.2))))

   '(jabber-chat-prompt-local ((t (:inherit font-lock-string-face :bold t))))
   '(jabber-chat-prompt-foreign ((t (:inherit font-lock-function-name-face :bold nil))))
   '(jabber-chat-prompt-system ((t (:inherit font-lock-comment-face :bold t))))
   '(jabber-rare-time-face ((t (:inherit font-lock-function-name-face :bold nil))))

   '(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
   '(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local :bold t))))

   `(ido-first-match ((t (:foreground ,desert-function-fg :bold t))))
   `(ido-only-match ((t (:foreground ,desert-function-fg :bold t))))
   `(ido-subdir ((t (:foreground nil :inherit minibuffer-prompt))))

   `(ac-candidate-face ((t (:background ,desert-mhl-bg :foreground ,desert-fg))))
   '(ac-selection-face ((t (:inherit highlight))))
   '(ac-completion-face ((t (:inherit ac-selection-face))))

   `(elscreen-tab-background-face ((t (:background ,desert-mhl-bg))))
   `(elscreen-tab-other-screen-face
     ((t (:background ,desert-mhl-bg :foreground "gray60"))))
   `(elscreen-tab-current-screen-face
     ((t (:background ,desert-mhl-bg :foreground ,desert-warning-fg :bold t))))
   `(elscreen-tab-control-face
     ((t (:inherit elscreen-tab-current-screen-face :underline nil))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'desert)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; desert-theme.el ends here
