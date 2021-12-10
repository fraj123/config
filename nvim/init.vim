call plug#begin(stdpath('data') . '/plugged')

" Color
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'

" Tree
Plug 'preservim/nerdtree'

"HTML5
Plug 'mattn/emmet-vim'

"Plug Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" IDE
Plug 'Yggdroot/indentLine' 
Plug 'mhinz/vim-signify'
Plug 'junegunn/vim-easy-align'
Plug 'martinda/Jenkinsfile-vim-syntax'
" Tmux
" Plug 'preservim/vimux'
" Plug 'christoomey/vim-tmux-navigator'
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
set numberwidth=1
set relativenumber
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
set updatetime=100

set cmdheight=2
set nobackup
set nowritebackup
set shortmess+=c

set clipboard=unnamedplus

au BufNewFile,BufRead ssh_config,*/.ssh/config.d/*  setf sshconfig

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

" Vim_Align_Plugin: {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" Nerdtree binds
nnoremap <Space>t :NERDTreeToggle<CR>
nnoremap <Space>f :NERDTreeFind<CR>

" Personal_kbind: {{{
vnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
map <c-f> :Files<CR>

" Split resize
nnoremap <Space>> 10<C-w>>
nnoremap <Space>< 10<C-w><

" Clipboard

"
""}}}
