set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Bundle 'https://github.com/freeo/vim-kalisi'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/atelierbram/vim-colors_atelier-schemes'
call vundle#end()            " required
filetype plugin indent on    " required

set number
set relativenumber
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set t_Co=256
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme base16-ateliersulphurpool
syntax on
:setlocal foldmethod=syntax
hi Type cterm=bold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
let g:airline_powerline_fonts = 1
set background=dark
