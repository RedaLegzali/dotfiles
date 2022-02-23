" Vim Config
syntax on
syntax enable
filetype plugin on 
set incsearch
set ignorecase
set smartcase
set shiftwidth=4
set tabstop=4
set noexpandtab
set smartindent
set smarttab
set number
set encoding=UTF-8
set wrap
set showmatch
set showcmd
set mouse=a
set guicursor=
set termguicolors
" set term=xterm-256color
set background=dark
let $SHELL = "/bin/bash"

" Plugin Manager
call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'joshdick/onedark.vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" Vim Theme
colorscheme onedark

" Lightline 
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }

" NERDtree 
nnoremap <C-t> :NERDTreeMirror<CR>:NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-c> :NERDTreeMirror<CR>:NERDTreeClose<CR>

" Coc extensions
"let g:coc_global_extensions = ["@yaegassy/coc-ansible", "coc-clangd", "coc-flutter", "coc-docker",
"	\ "@yaegassy/coc-intelephense", "coc-java", "coc-json", "coc-omnisharp", "coc-python",
"	\ "coc-sh", "coc-solargraph", "coc-tsserver", "coc-vetur", "coc-xml", "coc-yaml"]

" FZF
nnoremap <C-p> :FZF<CR>

" Emmet Key
let g:user_emmet_expandabbr_key = '<S-Tab>'

" Cursor 
"let &t_SI.="\e[5 q" "SI = INSERT mode
"let &t_SR.="\e[5 q" "SR = REPLACE mode
"let &t_EI.="\e[5 q" "EI = NORMAL mode (ELSE)
