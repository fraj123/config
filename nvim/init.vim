call plug#begin(stdpath('data') . '/plugged')

" Vim Align Plugin
Plug 'junegunn/vim-easy-align'

" Color
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

"HTML5
Plug 'mattn/emmet-vim'

"Plug 'Valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Setting: {{{
filetype indent plugin on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

set backspace=indent,eol,start
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=-1
set tabstop=8
set textwidth=80
set title
set number

set hidden
set nofixendofline
set nostartofline
set splitbelow
set splitright

set hlsearch
set incsearch
set laststatus=2
set noruler
set signcolumn=yes
set updatetime=1000

set cmdheight=2
set nobackup
set nowritebackup
set shortmess+=c

colorscheme onedark
" }}}

" Onedarkconf: {{{
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" }}}
