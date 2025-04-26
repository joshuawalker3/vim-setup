syntax on

set tabstop=8
set shiftwidth=8
set noexpandtab
set ignorecase
set smartcase
set incsearch
set number
set relativenumber

autocmd BufRead,BufNewFile *asm set filetype=nasm

au BufRead,BufNewFile *.S set filetype=asm
au BufRead,BufNewFile *.s set filetype=asm

call plug#begin('~/.vim/plugged')
Plug 'Shirk/vim-gas'
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'
Plug 'vhda/verilog_systemverilog.vim', {'for': 'nasm'}

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()


