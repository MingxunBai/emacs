;;; lazy-key-bind.el --- lazy-set-key configuation

;; Copyright (C) 2016 MingxunBai

;; Author: MingxunBai
;; Keywords: convenience
;; Version: 1.0

;; This is custom key bind use lazy-set-key.

;;; Code:
(lazy-unset-key '("M-<down-mouse-1>"))

(lazy-set-key '(("RET"          .   newline-and-indent)
                ("C-c C-k"      .   kill-buffer-and-window)

                ;; Custom feature
                ("C-x 2"        .   custom-split-window-below)
                ("C-x 3"        .   custom-split-window-right)
                ("C-x k"        .   custom-ido-kill-buffer)
                ("C-o"          .   custom-down-newline)
                ("M-o"          .   custom-up-newline)
                ("<C-return>"   .   custom-middle-newline)
                ("M-["          .   custom-move-up-current-line)
                ("M-]"          .   custom-move-down-current-line)
                ("C-c k"        .   custom-delete-whitespace-to-upline)
                ("C-c r"        .   custom-resize-indentation)
                ("<backtab>"    .   custom-resize-indentation--4)
                ("C-y"          .   custom-yank)


                ;; Git
                ("C-x p"        .   git-push-current-buffer)

                ;; Multiple cursors
                ("C-S-c C-S-c"  .   mc/edit-lines)
                ("M-<mouse-1>"  .   mc/add-cursor-on-click)

                ;; Origami mode
                ("<f2>"         .   origami-toggle-node)
                ("C-c o a"      .   origami-show-only-node)
                ("C-c o o"      .   origami-open-node-recursively)
                ("C-c o n"      .   origami-next-fold)
                ("C-c o p"      .   origami-previous-fold)
                ("C-c o f"      .   origami-forward-fold-same-level)
                ("C-c o b"      .   origami-backward-fold-same-level)
                ("C-c o r"      .   origami-reset)

                ;; Project explorer mode
                ("<f1>"         .   project-explorer-toggle)

                ;; Tab bar mode
                ("C-M-="        .   tabbar-press-home)
                ("M--"          .   tabbar-backward-group)
                ("M-="          .   tabbar-forward-group)
                ("C--"          .   tabbar-backward)
                ("C-="          .   tabbar-forward)

                ;; Winner mode
                ("C-x 4 u"      .   winner-undo)
                ("C-x 4 r"      .   winner-redo)

                ;; YASnippet mode
                ("<C-tab>"      .   yas-ido-expand)

                ;; 五笔输入法
                (";"            .   chinese-wbim-insert-ascii)))

(provide 'lazy-key-bind)
