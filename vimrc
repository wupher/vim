syntax enable
syntax on
filetype off

set t_Co=256

" set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let vundle manage plugins
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-markdown'

Plugin 'vim-ruby/vim-ruby'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-bundler'

Plugin 'tfnico/vim-gradle'

call vundle#end()

filetype plugin indent on

" convert tab to space
set expandtab

" 1 tab = 4 space
set tabstop=4
set shiftwidth=4

" 让 vim 将连续数量的空格视为一个 tab
set softtabstop=4

" 开户实时搜索功能 
set incsearch

"搜索时大小写不敏感
set ignorecase

"关闭兼容模式
set nocompatible

" vim 自身命令智能补全
set wildmenu

" 定义快捷键到行首行尾
nmap lb 0
nmap le $

" 定义快捷键的前缀
let mapleader=";"

" 将剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 将文本块复制至剪贴板
nmap <Leader>y "+y

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>

" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>

" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>

" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" 依次遍历子窗口
nnoremap nw <C-W><C-W>

" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l

" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h

" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k

" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

" pathogen
runtime bundle/pathogen/autoload/pathogen.vim

"运行 pathogen
execute pathogen#infect()

" Color
set background=dark
colorscheme molokai

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 显示行号
set number

"高亮当前行
set cursorline

"高亮显示搜索结果
set hlsearch

" 设置字体
set guifont=M+\ 1m\:h16

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler


" 多窗口操作

"依次遍历子窗口
nmap nw <C-w><C-w>

" 跳转至右边的窗口
nmap <Leader>lw <C-w>l
nmap <Leader>hw <C-w>h
nmap <Leader>kw <C-w>k
nmap <leader>jw <C-w>j
