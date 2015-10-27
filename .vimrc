"======================================PLUGIN CONFIGURATION================================================
"
" Set Up Vundle
runtime! .vim
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

call vundle#begin()
Plugin 'bling/vim-airline' "Airline plugin enabled
Plugin 'scrooloose/syntastic' "Syntax Plugin enabled
Plugin 'scrooloose/nerdtree' "File Tree Support
Plugin 'tpope/vim-fugitive' "Git plugin
Plugin 'Valloric/YouCompleteMe' "Code-AutoComplete Plugin
Plugin 'Shougo/vimproc' " Vimshell dependencies
Plugin 'Shougo/vimshell.vim' "Using shell in vim
Plugin 'rdnetto/YCM-Generator' "Using for generate .ycm_extra_config.py
call vundle#end()
"Airline Configurations
set noshowmode
set encoding=utf8
"set fillchars+=stl:\ ,stlnc:\
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1
"let g:ycm_show_diagnostics_ui = 0
syntax on
set showcmd

"YouCompleteme Configurations
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"======================================BASIC CONFIGURATION================================================
set nu "Show the line count
syntax on
set incsearch "Use increment search
set hlsearch "Use highlight search
set autoread "Autoread file when modified
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

"======================================PLUGIN KEYMAP CONFIGURATION================================================
"map <leader>n :NERDTreeToggle<CR>
noremap <leader><leader> :NERDTreeToggle<CR>
noremap <C-]> <Esc>:YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-n> <Esc>:tabnew<CR>
map <C-x> <Esc>:tabclose<CR>
map <C-l> <Esc>gt
map <C-h> <Esc>gT


"" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
"" the call to :runtime you can find below.  If you wish to change any of those
"" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
"" will be overwritten everytime an upgrade of the vim packages is performed.
"" It is recommended to make changes after sourcing debian.vim since it alters
"" the value of the 'compatible' option.
"
"" This line should not be removed as it ensures that various options are
"" properly set to work with the Vim-related packages available in Debian.
"runtime! debian.vim
"
"" Uncomment the next line to make Vim more Vi-compatible
"" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
"" options, so any other options should be set AFTER setting 'compatible'.
""set compatible
"
"" Vim5 and later versions support syntax highlighting. Uncommenting the next
"" line enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif
"
"" If using a dark background within the editing area and syntax highlighting
"" turn on this option as well
""set background=dark
"
"" Uncomment the following to have Vim jump to the last position when
"" reopening a file
""if has("autocmd")
""  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
""endif
"
"" Uncomment the following to have Vim load indentation rules and plugins
"" according to the detected filetype.
""if has("autocmd")
""  filetype plugin indent on
""endif
"
"" The following are commented out as they cause vim to behave a lot
"" differently from regular Vi. They are highly recommended though.
""set showcmd		" Show (partial) command in status line.
""set showmatch		" Show matching brackets.
""set ignorecase		" Do case insensitive matching
""set smartcase		" Do smart case matching
""set incsearch		" Incremental search
""set autowrite		" Automatically save before commands like :next and :make
""set hidden		" Hide buffers when they are abandoned
""set mouse=a		" Enable mouse usage (all modes)
"
"" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif
"
"colorscheme desert
"set tabstop=4
"set softtabstop=4
"set shiftwidth	=4
""set guifont=Consolas:h15
"set nu!
"set ai
"set guifont=Consolas:h15:cANSI   " 设置字体  
"
""==========================================BELOW IS NOT MY OWN CONFIG +============================================
"
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
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
"""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: VOID_133") 
		call append(line(".")+2,"\# QQ: 393952764")
        call append(line(".")+3, "\# mail: zhangjianqiu13@gmail.com") 
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
		call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "#include<algorithm>")
        call append(line(".")+8, "#include<cstdio>")
        call append(line(".")+9, "#include<vector>")
        call append(line(".")+10, "#include<cstring>")
        call append(line(".")+11, "#include<map>")
        call append(line(".")+12, "#include<queue>")
        call append(line(".")+13, "#include<stack>")
        call append(line(".")+14, "#include<string>")
        call append(line(".")+15, "#include<cstdlib>")
        call append(line(".")+16, "#include<ctime>")
        call append(line(".")+17, "#include<set>")
        call append(line(".")+18, "using namespace std;")
        call append(line(".")+19, " /*MACRO*/")
        call append(line(".")+20, "#define FORi(l,r) for(int i=(l);i<(r);i++)")
        call append(line(".")+21, "#define FORj(l,r) for(int j=(l);j<(r);j++)")
        call append(line(".")+22, "#define FORk(l,r) for(int k=(l);k<(r);k++)")
        call append(line(".")+23, "#define MEMSET0(i) memset((i),0,sizeof((i)))")
        call append(line(".")+24, "#define MEMSET1(i) memset((i),-1,sizeof((i)))")
        call append(line(".")+25, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
endfunc 
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""键盘命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"nmap <leader>w :w!<cr>
"nmap <leader>f :find<cr>
"
"" 映射全选+复制 ctrl+a
""map <C-A> ggVGY
""map! <C-A> <Esc>ggVGY
""map <F12> gg=G
"" 选中状态下 Ctrl+c 复制
"vmap <C-c> "+y
""去空行  
"nnoremap <F2> :g/^\s*$/d<CR> 
""比较文件  
"nnoremap <C-F2> :vert diffsplit 
""新建标签  
"map <F4> :tabnew<CR>
"map <C-n> :tabNext<CR>
""map <M-F2> :tabnew<CR>  
""列出当前目录文件  
"map <F3> :tabnew .<CR>  
""打开树状文件目录  
"map <C-F3> \be  
""C，C++ 按F5编译运行
"map <F5> :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"    exec "w"
"    if &filetype == 'c'
"        exec "!g++ % -o %<"
"        exec "! ./%<"
"    elseif &filetype == 'cpp'
"        exec "!g++ % -o %<"
"        exec "! ./%<"
"    elseif &filetype == 'java' 
"        exec "!javac %" 
"        exec "!java %<"
"    elseif &filetype == 'sh'
"        :!./%
"    endif
"endfunc
""C,C++的调试
"map <F8> :call Rungdb()<CR>
"func! Rungdb()
"    exec "w"
"    exec "!g++ % -g -o %<"
"    exec "!gdb ./%<"
"endfunc
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
"set tags=tags;/
""set autochdir 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""其他东东
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""默认打开Taglist 
"let Tlist_Auto_Open=1 
""""""""""""""""""""""""""""""" 
"" Tag list (ctags) 
""""""""""""""""""""""""""""""""" 
"let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
"let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
"let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
"let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
"" minibufexpl插件的一般设置
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"
"let g:miniBufExplModSelTarget = 1  
"
"
"
""VOID's Own Conf'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
""call pathogen#infect()
"
"
"""powerline{
""set guifont=PowerlineSymbols\ for\ Powerline
""set nocompatible
""set t_Co=256
""let g:Powerline_symbols = 'fancy'
"""}
"
"
"""taglist{
""let Tlist_Show_One_File = 1
"""只显示当前文件的taglist，默认是显示多个
""let Tlist_Exit_OnlyWindow = 1
"""如果taglist是最后一个窗口，则退出vim
""let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
""let Tlist_GainFocus_On_ToggleOpen = 1
"""打开taglist时，光标保留在taglist窗口
""let Tlist_Ctags_Cmd='/usr/bin/ctags'
"""设置ctags命令的位置
""nnoremap <leader>tl : Tlist<CR>
"""设置关闭和打开taglist窗口的快捷键
"""}
"set sessionoptions-=options
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
""High Light Tabs
"let g:HighLightTabsInCodeStatus=0
"function HighLightTabsInCode()
"    if g:HighLightTabsInCodeStatus == 0
"        highlight default link TabInCode ErrorMsg
"        match TabInCode /\t/
"        let g:HighLightTabsInCodeStatus=1
"    else
"        highlight default link TabInCode ErrorMsg
"        match TabInCode /THIS_WILL_NEVer_bE_sHoWN/
"        let g:HighLightTabsInCodeStatus=0
"    endif
"endfunction
"nmap <leader>ta : call HighLightTabsInCode()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:WineRelayModeStat=0
"function WineRelayMode()
"	if g:WineRelayModeStat == 0
"		match IncSearch /.*Call.*/
"		2match ErrorMsg /.*Ret.*/
"		3match StatusLine /.*trace.*/
"		let g:WineRelayModeStat=1
"	else
"		match NONE
"		2match NONE
"		3match NONE
"		let g:WineRelayModeStat=0
"	endif
"endfunction
"
"set clipboard+=unnamed
"
