;;; test-yatemplate.el --- Yatemplate tests      -*- lexical-binding: t; -*-

;; Copyright (C) 2016

;; Author:  Wieland Hoffmann <themineo+yatemplate@gmail.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'buttercup)
(require 'shut-up)
(require 'yatemplate)

(defmacro yatemplate-with-file-in-dir (dir file-name &rest body)
  "Call BODY after opening a buffer visiting FILE-NAME in DIR."
  `(unwind-protect
       (progn
         (find-file (concat ,dir "/" ,file-name))
         ,(macroexp-progn body))
     (kill-buffer (current-buffer))))

(defun yatemplates ()
  "Regenerate `auto-insert-alist' and return all our entries."
  (shut-up
   (yatemplate-fill-alist))
  (mapcar
   'car
   (cl-remove-if-not
    (lambda (pair)
      (ignore-errors (eq 'yatemplate-expand-yas-buffer (aref (cdr pair) 1))))
    auto-insert-alist)))

(defun touch (filename)
  "Touch FILENAME without any messages."
  (shut-up
    (write-region "a" nil filename)))

(describe
 "Yatemplate"
 (before-all
  (setq yatemplate-dir
        (concat 'temporary-file-directory "yatemplate-test")))
 (before-each
  (mkdir yatemplate-dir t)
  (setq default-directory yatemplate-dir))
 (it "doesn't add any entries unless asked"
     (expect (yatemplates) :not :to-be-truthy))
 (it "recognizes a single file"
     (touch "01:test.el")
     (expect (yatemplates) :to-have-same-items-as '("test.el$")))
 (it "doesn't create duplicates"
     (touch "01:test.el")
     (expect (yatemplates) :to-have-same-items-as '("test.el$"))
     (expect (yatemplates) :to-have-same-items-as '("test.el$")))
 (it "recognizes multiple files"
     (touch "01:test.el")
     (touch "02:.*.py")
     (expect (yatemplates) :to-have-same-items-as '(".*.py$" "test.el$")))
 (it "doesn't keep renamed files"
     (touch "01:test.el")
     (touch "02:.*.py")
     (expect (yatemplates) :to-have-same-items-as '(".*.py$" "test.el$"))
     (rename-file "01:test.el" "10:testbla.el")
     (expect (yatemplates) :to-have-same-items-as '(".*.py$" "testbla.el$")))
 (it "doesn't keep deleted files"
     (touch "01:test.el")
     (touch "02:.*.py")
     (expect (yatemplates) :to-have-same-items-as '(".*.py$" "test.el$"))
     (delete-file "01:test.el")
     (expect (yatemplates) :to-have-same-items-as '(".*.py$")))
 (it "ignores files without yatemplate-separator in their name"
     (touch "01:test.el")
     (touch "02-.*.py")
     (expect (yatemplates) :to-have-same-items-as '("test.el$")))
 (describe
  "when the separator is changed"
  (before-all
   (setq yatemplate-separator ":"))
  (it "removes no longer matching files"
      (touch "01:test.el")
      (touch "02:.*.py")
      (expect (yatemplates) :to-have-same-items-as '(".*.py$" "test.el$"))
      (setq yatemplate-separator "=")
      (expect (yatemplates) :not :to-be-truthy))
  (it "replaces no longer matching files with now matching ones"
      (touch "01:test.el")
      (touch "02:.*.py")
      (touch "01=bla.el")
      (expect (yatemplates) :to-have-same-items-as '(".*.py$" "test.el$"))
      (setq yatemplate-separator "=")
      (expect (yatemplates) :to-have-same-items-as '("bla.el$")))
  (after-each
   (setq yatemplate-separator ":")))
 (it "activates snippet-mode in files in yatemplate-dir"
     (yatemplate-with-file-in-dir
      yatemplate-dir
      "foo.el"
      (expect major-mode :to-be 'snippet-mode)
      (expect yas--guessed-modes :to-contain 'emacs-lisp-mode)))
 (describe
  "when yatemplate-unload-function is called"
  (it "unloads all yatemplate hooks"
      (expect find-file-hook :to-contain 'yatemplate--find-file-hook)
      (expect after-save-hook :to-contain 'yatemplate--after-save-hook)
      (yatemplate-unload-function)
      (expect find-file-hook :not :to-contain 'yatemplate--find-file-hook)
      (expect after-save-hook :not :to-contain 'yatemplate--after-save-hook)))
 (after-each
  (delete-directory yatemplate-dir t)))

(provide 'test-yatemplate)
;;; test-yatemplate.el ends here
