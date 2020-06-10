" VOID001's Custom Vim Configuration File
" = BEGIN GPLv3 =
" Copyright (C) 2017-2020  Jianqiu Zhang
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.
" = END GPLv3 =

syntax on
filetype plugin indent on

call plug#begin('~/.vim/bundle')

Plug 'dracula/vim', {'as': 'dracula'}
Plug 'WolfgangMehner/bash-support', {'for': ['sh']}
Plug 'scrooloose/nerdtree'                                     " File Tree Support
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine', {'for': ['sh', 'c', 'cpp', 'rust', 'python', 'go']} " When using vimwiki, this plugin conflicts with it.

Plug 'jiangmiao/auto-pairs'                                    " Insert or delete brackets, parens, quotes in pair
Plug 'majutsushi/tagbar'                                       " Tagbar
Plug 'fatih/vim-go' , {'for': ['go']}

Plug 'Firef0x/PKGBUILD.vim'
Plug 'vim-scripts/gtags.vim' , {'for': ['c', 'cpp']}
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

Plug 'w0rp/ale', {'for': ['sh', 'c', 'cpp', 'rust', 'python', 'go']} " Asynchornous Lint Engine

if has('nvim')
  Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'rust-lang/rust.vim' , {'for': ['rust']}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'rhysd/vim-clang-format', {'for': 'cpp'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'VOID001/graph-easy-vim'
" Plug 'godlygeek/tabular'                                       " Align your data as you wish

" Plug 'vim/killersheep'                                         " Vim game for demoing the new feature > <
call plug#end()

syntax on
set nocompatible                                               " Remove all vi compatible features to have a better experience
set wildmenu                                                   " Use enhanced <Tab> menu when completing the commands in vim command buffer
set rnu
autocmd InsertEnter * :set nu
autocmd InsertLeave * :set rnu

set incsearch                                                  " Use increment search
set hlsearch                                                   " Use highlight search
set autoread                                                   " Autoread file when modified
                                                               " Set the indentation styles editor-wide
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=2

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set nobackup                                                   " Do not create .swp file for each file opened
set directory = "~/.cache/vim/swap"                            " Create swap file in a separate directory
set expandtab
set noshowmode
set encoding=utf8
colorscheme dracula

" auto-pairs Configurations
let g:AutoPairs = { '{':'}' }
let g:AutoPairsMultilineClose = 0
                                                               " taglist Configuration
let Tlist_Sort_Type = "name"                                   " 按照名称排序
let Tlist_Use_Right_Window = 1                                 " 在右侧显示窗口
let Tlist_Compart_Format = 1                                   " 压缩方式
let Tlist_Exist_OnlyWindow = 1                                 " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0                             " 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0                               " 不要显示折叠树

" Vim-go Configuration
let g:go_bin_path = "/home/" . $USER . "/GOPATH/bin"
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" My general keymap configuration
noremap <leader><leader> :NERDTreeToggle<CR>
map <C-n> <Esc>:tabnew<CR>
map <C-x> <Esc>:tabclose<CR>
map <C-l> <Esc>gt
map <C-h> <Esc>gT
map <F8> <Esc>:TlistToggle<CR>
                                                               "" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
set tags=tags;/

" Load user config files only if the file exist, supress warning
function! LoadCustomConfig(config)
    if filereadable(expand(a:config))
        exec 'source' a:config
    endif
endfunction
command! -nargs=1 LoadConfig call LoadCustomConfig(<f-args>)


" LoadConfig ~/.vim/denite.vim
LoadConfig ~/.vim/deoplete.vim
LoadConfig ~/.vim/airline.vim
LoadConfig ~/.vim/vim-notes.vim
LoadConfig ~/.vim/vim-latex.vim
LoadConfig ~/.vim/gtags.vim
LoadConfig ~/.vim/vim-wiki.vim
LoadConfig ~/.vim/ale.vim
LoadConfig ~/.vim/clang-format.vim
" The following config file doesn't exist now
LoadConfig ~/.vim/vim-go.vim
LoadConfig ~/.vim/vim-cpp-enhanced-hightlight.vim
