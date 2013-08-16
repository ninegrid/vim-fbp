" Language:     FBP
" Maintainer:   Daniel Jackson <daniel@thinkhard.net>
" URL:          http://github.com/ninegrid/vim-fbp.git
" License:      WTFPL

"TODO generalize colors in highlight groups

" Check if syntax is already loaded
if exists('b:current_syntax') && b:current_syntax == 'fbp'
  finish
endif

" comments
syn keyword fbpTodo TODO FIXME TEST XXX contained
hi fbpTodo ctermfg=blue cterm=bold guifg=#6c71c4 gui=bold

syn match fbpComment /#.*/ contains=fbpTodo
hi def link fbpComment Comment

" edges
syn match fbpEdge /\<\u\+\s*->\s*\u\+\>/ contains=fbpOUT,fbpIN
hi fbpEdge ctermfg=green cterm=bold guifg=#859900 gui=bold

syn match fbpArrow /->/ contained
hi def link fbpArrow Operator

syn match fbpOUT /\<\u\+\s*->/ contained contains=fbpArrow
hi def link fbpOUT Type

syn match fbpIN  /->\s*\u\+\>/ contains=fbpArrow
hi fbpIN ctermfg=green cterm=bold guifg=#859900 gui=bold

" components
" IIPs
" IPs

if !exists('b:current_syntax')
  let b:current_syntax = 'fbp'
endif


