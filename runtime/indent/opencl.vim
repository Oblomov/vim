" Vim indent file
" Language:	OpenCL
" Maintainer:	Giuseppe Bilotta <giuseppe.bilotta@gmail.com>
" Last Change:	2012 Feb 05

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" It's just like C indenting
setlocal cindent

let b:undo_indent = "setl cin<"
