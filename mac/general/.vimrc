set number

set relativenumber

set expandtab
set softtabstop=2
set shiftwidth=2

set autoindent
set smartindent
set cindent

set noshowmode
set laststatus=2

set bg=dark

let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'itchyny/lightline.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

call plug#end()

" gruvbox configuration
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

