syntax on
set hlsearch
set incsearch
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set encoding=UTF-8
set spell!
colorscheme slate

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'preservim/nerdtree'
    Plug 'mbbill/undotree'
	Plug 'vim-airline/vim-airline'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot'
    Plug 'stevearc/vim-arduino'
    Plug 'OmniSharp/omnisharp-vim'
call plug#end()

nnoremap <F5> :UndotreeToggle<CR>
inoremap jk <ESC>
nnoremap <F4> :NERDTree<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"Bereaucracy
ab TS Technical Specialist
ab PM Project Manager
ab IC Individual Contributor
ab SM SCRUM Master
ab TL Team Lead

"Spanish
ab a' á
ab e' é
ab i' í
ab o' ó
ab u' ú
ab u.. ü
ab n~ ñ
ab ?? ¿
ab !! ¡
