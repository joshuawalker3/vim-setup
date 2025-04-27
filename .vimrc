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

" Enable ALE linting
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 0

" Only lint on save (recommended for assembly)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

au FileType asm let b:ale_linters = ['avr_as']

call plug#begin('~/.vim/plugged')
Plug 'Shirk/vim-gas'
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'
Plug 'vhda/verilog_systemverilog.vim', {'for': 'nasm'}

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()


