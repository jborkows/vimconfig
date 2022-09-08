set tabstop=4 softtabstop=4
set exrc
set relativenumber
set nu
set shiftwidth=4
set smartindent
set showcmd
set hls
set listchars=nbsp:☠,tab:▸␣
set list
set hlsearch
set hidden
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible
filetype plugin on

call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
set bg=dark
colorscheme gruvbox

fun! TrimWhitespace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun
augroup jb
	autocmd!
	autocmd BufWritePre * :call TrimWhitespace()
augroup END

nnoremap  <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
