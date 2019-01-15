(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"] t)
 '(blink-cursor-mode nil)
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program (executable-find "x-www-browser"))
 '(cal-tex-24 t)
 '(case-fold-search t)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(confirm-kill-emacs nil)
 '(cua-auto-tabify-rectangles nil)
 '(cua-selection-mode t)
 '(current-language-environment "UTF-8")
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
	("e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "4c6c6fa054cdb6af81cfd464d0a6e43db2ead82401f69d260701298e993cc4a9" "c7737b9fc3471779c8e51ea0a37834d24aa80a0d6a79b215e7501227ada39855" "236ddd367dd4434de60705867cc346380c4e5519c48dbb8b105b8a14b73dc430" "b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" "6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "7b36f45e5f014ac5d463fa1fe627df6f2094484d31c8aecd77d06b0b23844532" "351f8ddf35c230ff272c8c65e9aaf5e8fb9866d5635196593bfb537188a85515" "ac97d65e295d325462d49599594170a23b4c413091a08254dfc2bac9b3064f51" "c69001d18baa07f285a1f2e47aa9eff0f9a58ba3181ef2cba64272ed186d46a1" "d3a7eea7ebc9a82b42c47e49517f7a1454116487f6907cf2f5c2df4b09b50fc1" "de561d89c4d858ba1409eb5a982fc6379afa7834e53f593e5037e812ee6ef4d2" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" "cee46dcb69fb7b65c7ff2388fa01b41e11b9aa486c119d053faaa809473d5eca" "b24ee45778296405489a56484d90901150b32e99c6dc48394184a745491d92f9" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "ad665bdc1e81c420413cb105602ecb80c7b1f8d98a85b88164227d268c4f4f88" "44eec3c3e6e673c0d41b523a67b64c43b6e38f8879a7969f306604dcf908832c" "4f2ede02b3324c2f788f4e0bad77f7ebc1874eff7971d2a2c9b9724a50fb3f65" default)))
 '(debug-on-error nil)
 '(default-major-mode (quote org-mode) t)
 '(dired-guess-shell-alist-user nil)
 '(dired-omit-extensions
   (quote
	(".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bcf" ".run.xml" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".snm" ".out" ".nav" ".out" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyg" ".pyo" ".idx" ".lof" ".lot" ".glo" ".blg" ".bbl" ".cp" ".cps" ".fn" ".fns" ".ky" ".kys" ".pg" ".pgs" ".tp" ".tps" ".vr" ".vrs")))
 '(dired-omit-files-p t t)
 '(dired-omit-mode t t)
 '(dired-recursive-copies t)
 '(dired-recursive-deletes t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-format nil)
 '(display-time-mode t nil (time))
 '(display-time-use-mail-icon t)
 '(doc-view-continuous nil)
 '(fci-rule-character-color "#452E2E")
 '(fci-rule-color "#383838")
 '(fill-column 90)
 '(flyspell-issue-message-flag nil)
 '(fringe-mode (quote (1 . 1)) nil (fringe))
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t nil (font-lock))
 '(global-hl-line-mode t nil (hl-line))
 '(graphviz-dot-auto-indent-on-semi nil)
 '(helm-full-frame t)
 '(hi-lock-mode t t (hi-lock))
 '(inhibit-startup-screen t)
 '(ispell-extra-args (quote ("--reverse")))
 '(ispell-program-name "hunspell")
 '(linum-format "%d ")
 '(make-backup-files nil)
 '(mark-diary-entries-in-calendar t)
 '(menu-bar-mode nil)
 '(mode-line-in-non-selected-windows t)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
	(projectile helm-ispell ac-ispell csv gruvbox-theme jazz-theme darktooth-theme phoenix-dark-mono-theme autumn-light-theme suscolors-theme django-theme birds-of-paradise-plus-theme base16-theme monokai-theme heroku-theme ample-theme auto-complete gscholar-bibtex diminish helm-config helm-command helm-files org-ref ascii-art-to-unicode pyim fontawesome cnfonts yatemplate wgrep-ag sicp org-pdfview org-chinese-utils markdown-mode+ htmlize helm-gtags helm-flyspell helm-flycheck helm-c-yasnippet helm-ag exec-path-from-shell csv-nav csv-mode company-quickhelp cider-eval-sexp-fu anzu)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(pyim-dicts
   (quote
	((:name "bigdict" :file "~/.emacs.d/pyim/pyim-bigdict.pyim"))))
 '(read-mail-command (quote ignore))
 '(safe-local-variable-values
   (quote
	((eval when
		   (require
			(quote rainbow-mode)
			nil t)
		   (rainbow-mode 1))
	 (TeX─master . t)
	 (reftex-default-bibliography "./os.bib"))))
 '(scheme-program-name "guile")
 '(scroll-bar-mode nil)
 '(select-enable-clipboard t)
 '(tool-bar-button-margin 1 t)
 '(tool-bar-mode nil)
 '(track-eol t)
 '(unibyte-display-via-language-environment t)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
	((20 . "#BC8383")
	 (40 . "#CC9393")
	 (60 . "#DFAF8F")
	 (80 . "#D0BF8F")
	 (100 . "#E0CF9F")
	 (120 . "#F0DFAF")
	 (140 . "#5F7F5F")
	 (160 . "#7F9F7F")
	 (180 . "#8FB28F")
	 (200 . "#9FC59F")
	 (220 . "#AFD8AF")
	 (240 . "#BFEBBF")
	 (260 . "#93E0E3")
	 (280 . "#6CA0A3")
	 (300 . "#7CB8BB")
	 (320 . "#8CD0D3")
	 (340 . "#94BFF3")
	 (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(version-control (quote never))
 '(view-diary-entries-initially t)
 '(view-read-only t)
 '(visible-bell t)
 '(x-stretch-cursor t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 165 :family "DejaVu Sans Mono"))))
 '(mode-line ((t (:background "#2B2B2B" :foreground "#8FB28F" :box (:line-width -1 :style released-button) :weight bold :height 120))))
 '(mode-line-buffer-id ((t (:foreground "#F0DFAF" :weight bold :width condensed))))
 '(mode-line-inactive ((t (:background "#2b2b2b" :foreground "#5F7F5F" :box nil :height 120)))))
