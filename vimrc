


" Pluggins ==================================================
" Cscope integrating


" Git integrating
function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction


" Statusline config =========================================

function! StatuslineGit()
	let l:branchname=GitBranch()
return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m

"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\

" Basic set command =========================================
" 01. Line number
set number

" 02. Search
set hlsearch
set showmatch

" 03. Tab & Indent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4


