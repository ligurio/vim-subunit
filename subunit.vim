" TODO:
"	add plugin to http://www.vim.org/scripts/script.php?script_id=1945
"	add plugin to https://bugs.launchpad.net/subunit/+bug/591410

" Vim syntax file
" Language:    SubUnit Output
" Maintainer:  Sergey Bronnikov <sergeyb@bronevichok.ru>
" Remark:      Simple syntax highlighting for SubUnit output
" License:
" Copyright (c) 2016 Sergey Bronnikov
" Version: 0.0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match Test "^\[test\|testing\|test:\|testing:\]"
syn match Success "^\[success\|successful\|success:\|sucessful:\]" 
syn match Failure "^\[failure\|failure:\]" 
syn match Error "^error" 
syn match Skip "^\[skip\|skip:\]"
syn match XFail "^\[xfail\|xfail:\]" 
syn match UXSuccess "^\[uxsuccess\|uxsuccess:\]" 
syn match Progress "^progress:"
syn match Tags "^tags:"
syn match Time "^time:" 

syn match TimeString "=\zs[[:alnum:]/_]\+\ze" contained
syn match TestString "=\zs[[:alnum:]/_]\+\ze" contained

:if version >= 508 || !exists("did_conf_syntax_inits")
  if version < 508
    let did_conf_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink        Test	Keyword
  HiLink        Success Keyword
  HiLink        Failure Keyword
  HiLink        Error Keyword
  HiLink        Skip Keyword
  HiLink        XFail Keyword
  HiLink        UXsuccess Keyword
  HiLink        Progress Keyword
  HiLink        Tags Keyword
  HiLink        Time Keyword
 delcommand HiLink
endif

let b:current_syntax="subunit"
