""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" zhuyuhe's vim config
""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""
"" basic config 
"""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
" display row number 
set nu

" replace tab with four space
set tabstop=4

" delete a tab(four spaces) just use one bacespace
set smarttab
" use spaces instead of tabs
set expandtab
" use 4 spaces when you use ">"
set shiftwidth=4
set softtabstop=4

" use "+p to paste content from system clipboard 
" set paste

" set 7 lines remain when moving vertically using j/k
set so=10

" register as system clipboard
set clipboard=unnamed

" set utf8 as standard encoding
set encoding=utf8

" Highlight search results
set hlsearch

" 使用 <C-l> 暂时关闭查找高亮
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" backspace to previous line
set backspace=indent,eol,start

set langmenu=zh_CN.UTF-8

" config file encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set wildmenu
set wildmode=full


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" key-notation
""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

nmap <leader>w :w<cr>

nmap <leader>q :q!<cr>

nmap <leader>wq :wq<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" exchange \ and ,
noremap <silent> \ ,


"""""""""""""""""""""""""""""""""""""""""""""""""""""
"" color & fonts & theme
""""""""""""""""""""""""""""""""""""""""""""""""""""
" set syntax highlighting
syntax enable

" config solarized 
set background=dark
colorscheme solarized




""""""""""""""""""""""""""""""""""""""""""""""""""""
"" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""
" config Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


""""""" Plugins list start!
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color scheme solarized
Plugin 'altercation/vim-colors-solarized'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" vim powline
Plugin 'vim-airline/vim-airline'

" 缩进指示线
Plugin 'Yggdroot/indentLine'

" 自动括号补全
Plugin 'jiangmiao/auto-pairs'

" python 自动补全
Plugin 'davidhalter/jedi-vim'
" 使用tab自动补全
let g:jedi#completions_command = "<C-N>"


"""""" Plugins list end!

call vundle#end()            " required
filetype plugin indent on    " required
