" message
" Author: skanehira
" License: MIT

let s:save_cpo = &cpo
set cpo&vim

let s:msg_prefix = '[docker-compose.vim] '

" echo error message
function! docker#compose#utils#message#err(msg) abort
	echohl ErrorMsg
	echo s:msg_prefix .. a:msg
	echohl None
endfunction

" echo warning message
function! docker#compose#utils#message#warn(msg) abort
	echohl WarningMsg
	echo s:msg_prefix .. a:msg
	echohl None
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et: