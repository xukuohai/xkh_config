" Vim color file
" Maintainer:	Thorsten Maerz <info@netztorte.de>
" Last Change:	2006 Dec 07
" grey on black
" optimized for TFT panels
" Modified by xkh, 2013 Jun 17

"set background=dark
"Groups: Comment, Constant, Identifier, Statement, Preproc, Type, Special,
"Underlined, Error, Normal
"Keys: term, cterm, gui, ctermfg, ctermbg, guibg, guifg
"term, cterm, gui values: bold, underline, reverse, italic, none
"*bg, *fg values: red, yellow, green, blue, magenta, cyan, white, black, gray
"guifg, guibg valeus: #rgb
"Comamnd format: hilight Group key=value ...
hi clear
set bg&
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "xkh"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=Grey70	guibg=Black
highlight Search     guifg=Black	guibg=Red	gui=bold
highlight Visual     guifg=#404040			gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#80a0ff
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=Yellow			gui=NONE
highlight Type						gui=NONE

" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
" highlight Normal     ctermfg=Grey90
highlight Constant   ctermfg=Red                       cterm=none
highlight PreProc    ctermfg=DarkGreen                       cterm=none
highlight Search     ctermfg=white	ctermbg=red	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=blue                       cterm=none
highlight Comment    ctermfg=DarkGrey
highlight StatusLine ctermfg=blue	ctermbg=white
highlight Statement  ctermfg=blue			cterm=NONE
highlight Type       ctermfg=blue                       cterm=NONE

" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey	ctermbg=Black	cterm=NONE	guifg=Grey80      guibg=Black	gui=NONE
    highlight Search  ctermfg=Black	ctermbg=Red	cterm=bold	guifg=Black       guibg=Red	gui=bold
    highlight Visual  ctermfg=Black	ctermbg=yellow	cterm=bold	guifg=#404040			gui=bold
    highlight Special ctermfg=LightBlue			cterm=NONE	guifg=LightBlue			gui=NONE
    highlight Comment ctermfg=Cyan			cterm=NONE	guifg=LightBlue			gui=NONE
  endif
endif

highlight Pmenu      ctermfg=DarkGrey 	ctermbg=white   cterm=none
highlight PmenuSel   ctermfg=white 	ctermbg=DarkGrey  cterm=none
highlight LineNr     ctermfg=DarkGrey 	                  cterm=none
