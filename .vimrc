set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
set number
set cursorcolumn

set shiftwidth=4
set tabstop=4
set incsearch
set history=1000
set scrolloff=5

let g:airline_powerline_fonts = 1

call plug#begin()

"Plug 'vim-airline/vim-airline'
"Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'ziglang/zig.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/preservim/tagbar.git'

call plug#end()

set termguicolors     " enable true colors support
"let ayucolor="mirage"   " for dark version of theme
"colorscheme molokai"
colorscheme gruvbox
set background=dark

set number relativenumber
set nu rnu

set colorcolumn=120
nmap <space>e <Cmd>CocCommand explorer<CR>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

set undodir=~/.vim/undo-dir
set undofile

set laststatus=2

set encoding=utf-8
set fileencoding=utf-8

let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:rustfmt_autosave = 1

nmap <F8> :TagbarToggle<CR>
