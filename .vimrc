set autoindent
set smartindent
set number "show line numbers
syntax enable "syntax highlighting
set fileencoding=utf-8
set mouse=nvi "enable mouse for modes n normal, v visual, i insert
set tabstop=2 "number of spaces of tab character
set shiftwidth=2 "number of spaces of autoindent
set scrolloff=3 "keep lines when scrolling
set hlsearch "highlight searches
set mousehide "hide mouse when typing
set foldmethod=marker "automatically fold with {{{ ... }}}
"open folds with zo, close folds with zc
if has("gui_running")
	set guifont=Monospace\ 10
	set guioptions+=b
endif
