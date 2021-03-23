set encoding=utf-8
set fileencoding=utf-8
syntax on 
set number
set autoindent
set ai
set si
set expandtab
set tabstop=4
set shiftwidth=4
set viminfo="NONE"
set mouse=r
"colorscheme my_desert
colorscheme molokai
if (has("termguicolors"))
    set termguicolors
endif

vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" Latex specific instructions
autocmd BufEnter *.tex set spell spelllang=fr
autocmd BufEnter *.tex set spell
autocmd BufEnter *.tex syntax spell toplevel
autocmd BufEnter *.tex set tw=80

" YAML specific instructions
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml_checkers = ['yamllint']

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin("~/.config/nvim/bundle")
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/nvie/vim-flake8.git'
Plugin 'psf/black.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/rakr/vim-one.git'

"if &diff
"   colorscheme github
"    colorscheme molokai
"    colorscheme perso_diff
"endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or 
" just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

