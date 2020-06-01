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

filetype plugin indent on

call plug#begin('~/.vim/bundle')
Plug 'vim/killersheep'
Plug 'scrooloose/nerdtree' "File Tree Support
" Plug 'Shougo/vimproc' " Vimshell dependencies
Plug 'jiangmiao/auto-pairs' "Insert or delete brackets, parens, quotes in pair
Plug 'vim-scripts/taglist.vim' "tag viewer
Plug 'fatih/vim-go'
", {'for': ['golang', 'go']}
" Plug 'wikitopian/hardmode'
Plug 'Shougo/denite.nvim'
Plug 'Firef0x/PKGBUILD.vim'
Plug 'vim-scripts/gtags.vim' , {'for': ['c', 'cpp']}
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'w0rp/ale', {'for': ['c', 'cpp', 'rust', 'python', 'go']}
Plug 'rust-lang/rust.vim' , {'for': ['rust']}

Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'VOID001/graph-easy-vim'
Plug 'rhysd/vim-clang-format', {'for': 'cpp'}

call plug#end()

" ===============  v1.0 Configurations ======================
set nocompatible " Remove all vi compatible features to have a better experience
set wildmenu " Use enhanced <Tab> menu when completing the commands in vim command buffer
set rnu
autocmd InsertEnter * :set nu
autocmd InsertLeave * :set rnu
syntax on
set incsearch "Use increment search
set hlsearch "Use highlight search
set autoread "Autoread file when modified
" Set the indentation styles editor-wide
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=2
set mouse=a	"Enable Mouse

"Set encoding
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set nobackup            "Do not create .swp file for each file opened
set noswapfile          "Do not create swp file TODO: Create swap file but change the name
set expandtab

"auto-pairs Configurations
let g:AutoPairs = { '{':'}' }
let g:AutoPairsMultilineClose = 0

"Airline Configurations
set noshowmode
set encoding=utf8

"set fillchars+=stl:\ ,stlnc:\
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'cool'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:ycm_show_diagnostics_ui = 1
syntax on
set showcmd

"taglist Configuration
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  

"Vim-go Configuration
let g:go_bin_path = "/home/void001/GOPATH/bin"
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Syntastic Configuration
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go', 'golint', 'gofmt']
let g:syntastic_quiet_messages = {"level": "warnings" }

"======================================PLUGIN KEYMAP CONFIGURATION================================================
"map <leader>n :NERDTreeToggle<CR>
noremap <leader><leader> :NERDTreeToggle<CR>
noremap <C-]>] <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-n> <Esc>:tabnew<CR>
map <C-x> <Esc>:tabclose<CR>
map <C-l> <Esc>gt
map <C-h> <Esc>gT
map <F8> <Esc>:TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 显示相关  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
""winpos 5 5          " 设定窗口位置  
""set lines=40 columns=155    " 设定窗口大小  
""set nu              " 显示行号  
"set go=            " 不要图形按钮  
""color asmanian2     " 设置背景主题  
""syntax on           " 语法高亮  
"autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
"autocmd InsertEnter * se cul    " 用浅色高亮当前行  
""set ruler           " 显示标尺  
"set showcmd         " 输入的命令显示出来，看的清楚些  
""set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
""set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
""set novisualbell    " 不要闪烁(不明白)  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
"set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
"set background=dark "背景使用黑色 
"set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
"" 显示中文帮助
"if version >= 603
"    set helplang=cn
"    set encoding=utf-8
"endif
"" 设置配色方案
""colorscheme murphy
""字体 
""if (has("gui_running")) 
""   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
""endif 
"
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.[ch],*.sh, exec ":call SetTitle()" 
"""定义函数SetTitle，自动插入文件头 
func! SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: VOID_133") 
		call append(line(".")+2,"\# QQ: #########")
        call append(line(".")+3, "\# mail: ####@gmail.com") 
        call append(line(".")+4, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+5, "\#########################################################################") 
        call append(line(".")+6, "\#!/bin/bash") 
        call append(line(".")+7, "") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."),   "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: VOID_133") 
		call append(line(".")+2, "    > ################### ")
        call append(line(".")+3, "    > Mail: ################### ") 
        call append(line(".")+4, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+5, " ************************************************************************/") 
        call append(line(".")+6, "")
    endif
    if &filetype == 'cpp'
		" call append(line(".")+6, "#include<iostream>")
        " call append(line(".")+7, "#include<algorithm>")
        " call append(line(".")+8, "#include<cstdio>")
        " call append(line(".")+9, "#include<vector>")
        " call append(line(".")+10, "#include<cstring>")
        " call append(line(".")+11, "#include<map>")
        " call append(line(".")+12, "#include<queue>")
        " call append(line(".")+13, "#include<stack>")
        " call append(line(".")+14, "#include<string>")
        " call append(line(".")+15, "#include<cstdlib>")
        " call append(line(".")+16, "#include<ctime>")
        " call append(line(".")+17, "#include<set>")
        " call append(line(".")+18, "using namespace std;")
        " call append(line(".")+19, " /*MACRO*/")
        " call append(line(".")+20, "#define FORi(l,r) for(int i=(l);i<(r);i++)")
        " call append(line(".")+21, "#define FORj(l,r) for(int j=(l);j<(r);j++)")
        " call append(line(".")+22, "#define FORk(l,r) for(int k=(l);k<(r);k++)")
        " call append(line(".")+23, "#define MEMSET0(i) memset((i),0,sizeof((i)))")
        " call append(line(".")+24, "#define MEMSET1(i) memset((i),-1,sizeof((i)))")
        " call append(line(".")+25, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "#include<unistd.h>")
        call append(line(".")+8, "#include<stdlib.h>")
        call append(line(".")+9, "#include<stdarg.h>")
        call append(line(".")+10, "#include<string.h>")
        call append(line(".")+11, "#include<stddef.h>")
        call append(line(".")+12, "#include<time.h>")
        call append(line(".")+13, "#include<stdio.h>")
        call append(line(".")+14, "#include<stdio.h>")
        call append(line(".")+15, "")
    endif
endfunc 
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""实用设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 设置当文件被改动时自动载入
"set autoread
"" quickfix模式
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
""代码补全 
"set completeopt=preview,menu 
""允许插件  
""filetype plugin on
""共享剪贴板  
"set clipboard+=unnamed 
""从不备份  
"set nobackup
""make 运行
":set makeprg=g++\ -Wall\ \ %
""自动保存
"set autowrite
"set ruler                   " 打开状态栏标尺
"set cursorline              " 突出显示当前行
"set magic                   " 设置魔术
"set guioptions-=T           " 隐藏工具栏
"set guioptions-=m           " 隐藏菜单栏
""set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
"" 设置在状态行显示的信息
"set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " 开始折叠
"" 不要使用vi的键盘模式，而是vim自己的
"set nocompatible
"" 语法高亮
"set syntax=on
"" 去掉输入错误的提示声音
"set noeb
"" 在处理未保存或只读文件的时候，弹出确认
"set confirm
"" 自动缩进
"set autoindent
"set smartindent
"set cindent
"" Tab键的宽度
"set tabstop=4
"" 统一缩进为4
"set softtabstop=4
"set shiftwidth=4
"" 不要用空格代替制表符
"set noexpandtab
"" 在行和段开始处使用制表符
"set smarttab
"" 显示行号
"set number
"" 历史记录数
"set history=1000
""禁止生成临时文件
"set nobackup
"set noswapfile
""搜索忽略大小写
""set ignorecase
""搜索逐字符高亮
"set hlsearch
"set incsearch
""行内替换
"set gdefault
""编码设置
"set enc=utf-8
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
""语言设置
"set langmenu=zh_CN.UTF-8
"set helplang=cn
"" 我的状态行显示的内容（包括文件类型和解码）
""set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
""set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
"" 总是显示状态行
"set laststatus=2
"" 命令行（在状态行下）的高度，默认为1，这里是2
"set cmdheight=2
"" 侦测文件类型
""filetype on
"" 载入文件类型插件
""filetype plugin on
"" 为特定文件类型载入相关缩进文件
""filetype indent on
"" 保存全局变量
"set viminfo+=!
"" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"" 字符间插入的像素行数目
"set linespace=0
"" 增强模式中的命令行自动完成操作
"set wildmenu
"" 使回格键（backspace）正常处理indent, eol, start等
"set backspace=2
"" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l
"" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"" 通过使用: commands命令，告诉我们文件的哪一行被改变过
"set report=0
"" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\
"" 高亮显示匹配的括号
"set showmatch
"" 匹配括号高亮的时间（单位是十分之一秒）
"set matchtime=1
"" 光标移动到buffer的顶部和底部时保持3行距离
"set scrolloff=3
"" 为C程序提供自动缩进
""set smartindent
"" 高亮显示普通txt文件（需要txt.vim脚本）
"au BufRead,BufNewFile *  setfiletype txt
""""自动补全
""":inoremap ( ()<ESC>i
""":inoremap ) <c-r>=ClosePair(')')<CR>
""":inoremap { {<CR>}<ESC>O
""":inoremap } <c-r>=ClosePair('}')<CR>
""":inoremap [ []<ESC>i
""":inoremap ] <c-r>=ClosePair(']')<CR>
""":inoremap " ""<ESC>i
""":inoremap ' ''<ESC>i
"""function! ClosePair(char)
"""    if getline('.')[col('.') - 1] == a:char
"""        return "\<Right>"
"""    else
"""        return a:char
"""    endif
"""endfunction
"""filetype plugin indent on 
""打开文件类型检测, 加了这句才可以用智能补全
"set completeopt=longest,menu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" CTags的设定  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Sort_Type = "name"    " 按照名称排序  
"let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
"let Tlist_Compart_Format = 1    " 压缩方式  
"let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
""autocmd FileType java set tags+=D:\tools\java\tags  
""autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
""let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
""设置tags  
set tags=tags;/

"High Light Tabs
let g:HighLightTabsInCodeStatus=0
function! HighLightTabsInCode()
    if g:HighLightTabsInCodeStatus == 0
        highlight default link TabInCode ErrorMsg
        match TabInCode /\t/
        let g:HighLightTabsInCodeStatus=1
    else
        highlight default link TabInCode ErrorMsg
        match TabInCode /THIS_WILL_NEVer_bE_sHoWN/
        let g:HighLightTabsInCodeStatus=0
    endif
endfunction
nmap <leader>ta : call HighLightTabsInCode()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:WineRelayModeStat=0
function! WineRelayMode()
	if g:WineRelayModeStat == 0
		match IncSearch /.*Call.*/
		2match ErrorMsg /.*Ret.*/
		3match StatusLine /.*trace.*/
		let g:WineRelayModeStat=1
	else
		match NONE
		2match NONE
		3match NONE
		let g:WineRelayModeStat=0
	endif
endfunction

nmap gy :Goyo<CR>

source ~/.vim/denite.vim
source ~/.vim/vim-notes.vim
source ~/.vim/vim-latex.vim
source ~/.vim/gtags.vim
source ~/.vim/vim-wiki.vim
source ~/.vim/ale.vim
source ~/.vim/clang-format.vim
