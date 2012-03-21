set autoindent
set smartindent
set number "show line numbers
syntax enable "syntax highlighting
set fileencoding=utf-8
set mouse=nvi "enable mouse for modes n normal, v visual, i insert
set scrolloff=3 "keep lines when scrolling

set tabstop=2 "number of spaces of tab character
set shiftwidth=2 "number of spaces of autoindent
set softtabstop=2
set noexpandtab

set hlsearch "highlight searches
set mousehide "hide mouse when typing
set foldmethod=marker "automatically fold with {{{ ... }}}
"open folds with zo, close folds with zc

"toggle between set list with backslash + l
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

if has("gui_running")
	set guifont=Monospace\ 10
	set guioptions+=b
endif

if has("autocmd")
	autocmd BufWritePre *.py,*.c,*.cpp,*.sh,*.tex,*.lua :call <SID>StripTrailingWhitespaces()
endif

function! <SID>StripTrailingWhitespaces()
	"save last search and cursor position
	"otherwise both would be set to the last whitespace removed
	let _s=@/
	let l = line(".")
	let c = col(".")
	"do the business
	%s/\s\+$//e
	"restore previous search history and cursor position
	let @/=_s
	call cursor(l, c)
endfunction
