" Specific customized statusline config

function! StatuslineGit()
	let l:branchname=GitBranch()
	return strlen(l:branchname) > 0?''.l:branchname.'':''
endfunction

" Config colors
" Color name: https://codeyarns.com/tech/2011-07-29-vim-chart-of-color-names.html

"    NR-16   NR-8    COLOR NAME
"    0       0       Black
"    1       4       DarkBlue
"    2       2       DarkGreen
"    3       6       DarkCyan
"    4       1       DarkRed
"    5       5       DarkMagenta
"    6       3       Brown, DarkYellow
"    7       7       LightGray, LightGrey, Gray, Grey
"    8       0*      DarkGray, DarkGrey
"    9       4*      Blue, LightBlue
"    10      2*      Green, LightGreen
"    11      6*      Cyan, LightCyan
"    12      1*      Red, LightRed
"    13      5*      Magenta, LightMagenta
"    14      3*      Yellow, LightYellow
"    15      7*      White

hi User1 ctermfg=black ctermbg=yellow
hi User2 ctermfg=black ctermbg=grey
hi User3 ctermfg=black ctermbg=LightGreen
hi User4 ctermfg=black ctermbg=red
hi User5 ctermfg=black ctermbg=cyan
hi User6 ctermfg=114 ctermbg=0
hi User7 ctermfg=114 ctermbg=0

" Enable the statusline
set laststatus=2

" Statusline content
set statusline=

set statusline+=%1*\[%n]											"Buffernr
set statusline+=%2*\[%{StatuslineGit()}]							"GitBranch
set statusline+=%3*\ %<%F\ 											"File+path
set statusline+=%=													"Right align
set statusline+=%4*\ %{&filetype}\ 									"FileType
set statusline+=%5*\ %{''.(&fenc!=''?&fenc:&enc).''}\[%{&ff}\]		"Encoding
set statusline+=%5*\ %=row:%l/%L									"Rownumber/total
set statusline+=%5*\ col:%c											"Colnr
set statusline+=%5*\ %m%r%w\ 										"Modified? Readonly? Top/bot.

