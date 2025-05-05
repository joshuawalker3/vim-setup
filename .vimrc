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

au FileType c,cpp let b:ale_linters = ['gcc', 'clang']
let g:ale_c_gcc_executable = 'gcc'
let g:ale_c_clang_executable = 'clang'

let g:ale_fixers = {
\   'c': ['clang-format'],
\}

let g:ale_fix_on_save = 1

autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 expandtab

call plug#begin('~/.vim/plugged')
Plug 'Shirk/vim-gas'
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'
Plug 'vhda/verilog_systemverilog.vim', {'for': 'nasm'}

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ coc#refresh()

inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <CR> to confirm completion or insert newline
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

