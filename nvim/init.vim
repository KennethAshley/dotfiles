call plug#begin()
  Plug 'morhetz/gruvbox'
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'sheerun/vim-polyglot'
  Plug 'w0rp/ale'
  Plug 'unblevable/quick-scope'
  Plug 'rbong/vim-crystalline'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

syntax enable
set t_Co=256
set termguicolors
set background=dark
colorscheme gruvbox 

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smarttab

set nowrap

set hidden

set autoindent
set smartindent

set number relativenumber
set title
set nu rnu

function! StatusLine(...)
        return crystalline#mode() . ' %f%h%w%m%r '
endfunction
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'gruvbox'
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'transparent'

nnoremap <C-p> :Files<cr>
nnoremap <C-f> :Ag<cr>

nmap j gj
nmap k gk
